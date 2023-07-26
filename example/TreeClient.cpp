
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
using pargeo::dynKdTree::rootNode;
using pargeo::point;

json create_response_to_query_message(std::string status, double time, std::vector<double> result) {
    //TODO: fix time with pargeo::time
    json response;
    response["status"] = status;
    response["time"] = time;
    response["result"] = result;
    return response;
}

json create_response_error(double time, const std::string &result) {
    json response;
    response["status"] = "ERROR";
    response["time"] = time;
    response["result"] = result;
    return response;
}

json create_response_to_creation_message(const std::string &status, double time) {
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
createStruct(parlay::sequence<pargeo::point<dim>> points) {
    size_t n = points.size();
    auto *tree = new pargeo::dynKdTree::rootNode<dim, pargeo::point<dim>>(points, 0, n / 2);
    return tree;
}

template<int dim>
void runQuery(pargeo::timer &t,
              json &message,
              json &response,
              std::unique_ptr<rootNode<dim, point<dim>>> &tree,
              std::vector<double> &weights,
              parlay::sequence<pargeo::wpoint<dim>> &points) {
    t.start();
    // The query radius
    double radius = message["radius"].template get<double>();
    std::cerr<<radius<<std::endl;
    // Read the weights into a vector
    std::vector<double> NewWeights = message["weights"].template get<std::vector<double>>();
    for (int i = 0; i < NewWeights.size(); i++){
        std::cerr<<"Weights before: " <<weights[i] << std::endl;
        std::cerr<<"NewWeights: " <<NewWeights[i] << std::endl;
        weights[i] = NewWeights[i];
        std::cerr<<"Weights after: " <<weights[i] << std::endl;

    }


    tree->calcWeights();

    size_t n = NewWeights.size();
    std::vector<double> sums(n, NAN);
    for(int i = 0; i<n; i++){
        sums[i] = tree->kNNWRange(points[i], radius);
    }
//    parlay::parallel_for(0, n, [&](size_t i) {
//        sums[i] = tree->kNNWRange(points[i], radius);
//    });

    // Generate response
    response = create_response_to_query_message("OK", t.get_next(), sums);
    std::cout << response.dump() << std::endl;
    t.stop();
    t.reset();
}

template<int dim>
void buildStructure(pargeo::timer &t,
                    json &message,
                    json &response,
                    std::unique_ptr<rootNode<dim, point<dim>>> &tree,
                    std::vector<double> &weights,
                    parlay::sequence<pargeo::wpoint<dim>> &points) {
    // Read the points into a vector.
    t.start();
    std::vector<double> pointsVector = message["points"].template get<std::vector<double>>();

    weights = std::vector<double>(pointsVector.size()/dim, NAN);

    parlay::sequence<double> seqPoints(pointsVector.begin(), pointsVector.end());
    points = pargeo::pointIO::parsePointsW<pargeo::wpoint<dim>>(seqPoints, weights);
    tree.reset(createStruct<dim>(points));

    response = create_response_to_creation_message("OK", t.get_next());
    std::cout << response.dump() << std::endl;
    t.stop();
    t.reset();
}

template<int dim>
void mainloop() {


    parlay::sequence<pargeo::wpoint<dim>> points;
    std::unique_ptr<rootNode<dim, point<dim>>> tree;
    json message;
    json response;
    std::string message_str;
    std::vector<double> weights;
    pargeo::timer t;

    while (true) {
        std::getline(std::cin, message_str);

        message = json::parse(message_str.c_str());
        std::string message_type = message["type"].template get<std::string>();

        if (message_type == "run-query") {
            runQuery(t, message, response, tree, weights, points);
        } else if (message_type == "build-datastructure") {
            buildStructure(t, message, response, tree, weights, points);
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