
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

json create_response(std::string status, double time, std::vector<double> result){

    json response;
    response["status"] = status;
    response["time"] = time;
    response["result"] = result;
    return response;
}

template<typename T>
std::vector<T> flatten(std::vector<std::vector<T>> const &vec)
{
    std::vector<T> flattened;
    for (auto const &v: vec) {
        flattened.insert(flattened.end(), v.begin(), v.end());
    }
    return flattened;
}

template <int dim>
inline void createStruct(std::vector<std::vector<double>> points, size_t n){
    parlay::sequence<double> initialWeights(n, 1);
    std::vector<double> flattenedPoints = flatten(points);
    parlay::sequence<double> seqPoints(flattenedPoints.begin(), flattenedPoints.end());
    auto a = pargeo::pointIO::parsePointsWnotFile<pargeo::wpoint<dim>>(seqPoints, initialWeights);
}

int main(int argc, char *argv[]) {

    json message;
    json response;
    std::string message_str;
    std::vector<double> empty_vector;

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
            std::vector<double> weights = message["weights"].template get<std::vector<double>>();

            // std::cout << "\tweights: " << std::endl;
            // for (double w : weights) {
            //     std::cout << "\t\t" << w << std::endl;
            // }

            // Generate response
            // TODO: Update with actual result.
            std::vector<double> query_result{0.001, 0.02};
            response = create_response("OK", 0.001, query_result);
            std::cout << response.dump() << std::endl;
        } else if (message_type == "build-datastructure") {

            // Get the dimension
            int dimension = message["dimension"].template get<int>();

            // std::cout << "\tdimension: " << dimension << std::endl;

            // Read the points into a vector.
            // TODO: Use these to build the data-structure
            std::vector<std::vector<double>>points = message["points"].template get<std::vector<std::vector<double>>>();
            size_t n = points.size();
            // This is stupid but is for the templated static compiler.
            switch (dimension) {
                case 2:
                    createStruct<2>(points, n);
                    break;
                case 3:
                    createStruct<3>(points, n);
                    break;
                case 4:
                    createStruct<4>(points, n);
                    break;
                case 5:
                    createStruct<5>(points, n);
                    break;
                case 6:
                    createStruct<6>(points, n);
                    break;
                case 7:
                    createStruct<7>(points, n);
                    break;
                default:
                    throw std::runtime_error("Dimension not yet added to example.");
            }
            // std::cout << "\tpoints: " << std::endl;
            // for (std::vector<double> p : points) {
            //     std::cout << "\t\t" << p[0] << ", " << p[1] << ", " << p[2] << std::endl;
            // }

            // TODO: Do any error handling required from ParGeo.


            response = create_response("OK", 0.001, empty_vector);
            std::cout << response.dump() << std::endl;
        } else if (message_type == "exit") {
            exit(0);
        } else {
            response = create_response("ERROR", 0, empty_vector);
            std::cout << response.dump() << std::endl;
        }
    }
    return 0;
}