
#include <assert.h>
#include <limits>
#include "dataset/uniform.h"
#include "parlay/parallel.h"
#include "parlay/utilities.h"
#include <iostream>
#include "dynamicKdTree/dynKdTree.h" /* Include dynamic kdTree */
#include "pargeo/pointIO.h"
#include <vector>
#include "pargeo/getTime.h"
#include <unistd.h>
#include <limits>
#include "json.hpp"

using json = nlohmann::json;

json create_response_to_query_message(std::string status, double time, std::vector<double> result) {
    //TODO: fix time with pargeo::time
    json response;
    response["status"] = status;
    response["time"] = time;
    response["result"] = result;
    return response;
}

json create_response_error(double time, const std::string &result) {
    //TODO: fix time with pargeo::time
    json response;
    response["status"] = "ERROR";
    response["time"] = time;
    response["result"] = result;
    return response;
}

json create_response_to_creation_message(std::string status, double time) {
    //TODO: fix time with pargeo::time
    json response;
    response["status"] = status;
    response["time"] = time;
    response["result"] = nullptr;
    return response;
}

template<typename T>
std::vector<T> flatten(std::vector<std::vector<T>> const &vec) {
    std::vector<T> flattened;
    for (auto const &v: vec) {
        flattened.insert(flattened.end(), v.begin(), v.end());
    }
    return flattened;
}

template<int dim>
pargeo::dynKdTree::rootNode<dim, pargeo::point<dim>> *
createStruct(parlay::sequence<pargeo::point<dim>> points, std::vector<double> &weights) {
    size_t n = points.size();
    auto *tree = new pargeo::dynKdTree::rootNode<dim, pargeo::point<dim>>(points, 0, n / 2);
    return tree;
}

template<int dim>
void mainloop() {
    using pargeo::dynKdTree::rootNode;
    using pargeo::point;

    parlay::sequence<pargeo::wpoint<dim>> points;
    std::unique_ptr<rootNode<dim, point<dim>>> tree;
    json message;
    json response;
    std::string message_str;
    std::vector<double> weights;


    while (true) {
        std::getline(std::cin, message_str);
        //std::cout<<"Received:"<<message_str<<std::endl;

        message = json::parse(message_str.c_str());
        std::string message_type = message["type"].template get<std::string>();

        if (message_type == "run-query") {

            // The query radius
            double radius = message["radius"].template get<double>();

            // Read the weights into a vector
            // TODO: Use these to run the query.
            std::vector<double> NewWeights = message["weights"].template get<std::vector<double>>();
            for (int i = 0; i < NewWeights.size(); i++) {
                weights[i] = NewWeights[i];
            }
            tree->calcWeights();
            size_t n = NewWeights.size();
            std::vector<double> sums(n, NAN);
            parlay::parallel_for(0, n, [&](size_t i) {
                sums[i] = tree->kNNWRange(points[i], radius);
            });

            // Generate response
            // TODO: Update with actual result.
            //std::vector<double> query_result{0.001, 0.02};
            response = create_response_to_query_message("OK", 0.001, sums);
            std::cout << response.dump() << std::endl;
        } else if (message_type == "build-datastructure") {



            // std::cout << "\tdimension: " << dimension << std::endl;

            // Read the points into a vector.
            // TODO: Use these to build the data-structure
            std::vector<double> pointsVector = message["points"].template get<std::vector<double>>();
            weights = std::vector<double>(pointsVector.size(), NAN);
            parlay::sequence<double> seqPoints(pointsVector.begin(), pointsVector.end());
            points = pargeo::pointIO::parsePointsW<pargeo::wpoint<dim>>(seqPoints, weights);
            tree.reset(createStruct<dim>(points, weights));

            // std::cout << "\tpoints: " << std::endl;
            // for (std::vector<double> p : points) {
            //     std::cout << "\t\t" << p[0] << ", " << p[1] << ", " << p[2] << std::endl;
            // }
            // TODO: Do any error handling required from ParGeo.



            response = create_response_to_creation_message("OK", 0.001);
            std::cout << response.dump() << std::endl;
        } else if (message_type == "exit") {
            exit(0);
        } else {
            response = create_response_error(0, "There was no recognized message");
            std::cout << response.dump() << std::endl;
        }
    }
}

int main(int argc, char *argv[]) {
#define MAINLOOPMACRO(d) \
    case d:              \
        mainloop<d>();   \
        break

    int dimension = atoi(argv[1]);
    switch (dimension) {
        MAINLOOPMACRO(2);
        MAINLOOPMACRO(3);
        MAINLOOPMACRO(4);
        MAINLOOPMACRO(5);
        MAINLOOPMACRO(6);
        MAINLOOPMACRO(7);

        default:
            throw std::runtime_error("Dimension not yet added to example.");
    }
    return 0;
}