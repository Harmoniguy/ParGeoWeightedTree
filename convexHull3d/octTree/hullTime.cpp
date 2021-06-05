#include <iostream>
#include <algorithm>
#include "parlay/parallel.h"
#include "pargeo/getTime.h"
#include "pargeo/point.h"
#include "pargeo/pointIO.h"
#include "pargeo/parseCommandLine.h"
#include "convexHull3d/hull.h"

using namespace pargeo;
using namespace pargeo::pointIO;

template <class pt>
void timeHull(parlay::sequence<pt> &P, int s, size_t numProc, int rounds, char const *outFile) {
  timer t; t.start();
  bool savePlot = outFile != NULL;
  for(int i=0; i<rounds; ++i) {
    auto H = hull3dGrid(P, s, savePlot);
    // auto H = hull3dGridConcurrent(P, s, numProc);
    std::cout << "hull-size = " << H.size() << "\n";
    std::cout << "round-time = " << t.get_next() << "\n";
  }
  t.stop();
  //if (outFile != NULL) writeIntSeqToFile(I, outFile);
}

int main(int argc, char* argv[]) {
  commandLine P(argc,argv,"[-o <outFile>] [-r <rounds>] [-s <s-level>] [-k <level-skip>] <inFile>");
  char* iFile = P.getArgument(0);
  char* oFile = P.getOptionValue("-o");
  int rounds = P.getOptionIntValue("-r",1);
  int s = P.getOptionIntValue("-s", 4);
  int numProc = P.getOptionIntValue("-p", 1);

  int dim = readHeader(iFile);
  if (dim != 3) {
    std::cout << "Error, convexHull3D only takes 3d inputs, abort.\n";
    abort();
  }

  parlay::sequence<pargeo::fpoint<3>> Points = readPointsFromFile<pargeo::fpoint<3>>(iFile);
  timeHull<pargeo::fpoint<3>>(Points, s, numProc, rounds, oFile);
}
