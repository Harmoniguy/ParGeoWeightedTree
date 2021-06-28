// This code is part of the Pargeo Library
// Copyright (c) 2020 Yiqiu Wang and the Pargeo Team
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights (to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to
// permit persons to whom the Software is furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
// LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
// OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
// WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#pragma once

#include "parlay/parallel.h"
#include "parlay/sequence.h"
#include "pargeo/getTime.h"
#include "pargeo/point.h"

#include "serialHull.h"
#include "vertex.h"

// #define HULL_SERIAL_VERBOSE

template<class linkedFacet3d, class vertex3d, class origin3d>
void incrementHull3dSerial(serialHull<linkedFacet3d, vertex3d, origin3d> *context) {
  using namespace pargeo;
  using namespace parlay;

#ifdef HULL_SERIAL_VERBOSE
  pargeo::timer t;
  size_t errors = 0;
  size_t round = 0;
  double apexTime = 0;
  double frontierTime = 0;
  double createTime = 0;
  double splitTime = 0;
#endif

  // int fuse = 100;
  while (true) {

#ifdef HULL_SERIAL_VERBOSE
    t.start();
#endif

    //std::cout << "\n\nNew round\n";
  loopStart:
    // if (fuse-- < 0) break;

    vertex3d apex = context->furthestApex();
    //cout << "apex-time = " << apexTime << endl;
#ifdef HULL_SERIAL_VERBOSE
    //std::cout << "apex = " << apex << "\n";
    apexTime += t.get_next();
#endif

    if (apex.isEmpty()) break;

#ifdef HULL_SERIAL_VERBOSE
    round ++;
#endif

    auto frontier = context->computeFrontier(apex);
    auto frontierEdges = std::move(get<0>(frontier));
    auto facetsBeneath = std::move(get<1>(frontier));

#ifdef HULL_SERIAL_VERBOSE
    //std::cout << "Got frontier\n";
    frontierTime += t.get_next();
#endif

    //std::cout << "frontier ring:\n";
    for(size_t i=0; i<frontierEdges.size(); ++i) {
      auto nv = frontierEdges.at((i+1)%frontierEdges.size());
      auto cv = frontierEdges.at(i);
      //std::cout << cv.a << ", " << cv.b << "\n";
      if (cv.b != nv.a) {
      }
    }
    //std::cout << "\n";

    for(size_t i=0; i<frontierEdges.size(); ++i) {
      auto nv = frontierEdges.at((i+1)%frontierEdges.size());
      auto cv = frontierEdges.at(i);
      if (cv.b != nv.a) {
      // if (cv.b != nv.a &&
      // 	  cv.a != nv.a &&
      // 	  cv.b != nv.b &&
      // 	  cv.a != nv.b) {
      // 	// apex.attribute.seeFacet->clear();
      // 	std::cout << cv.a << ", " << cv.b << " vs ";
      // 	std::cout << nv.a << ", " << nv.b << "\n";

#ifdef HULL_SERIAL_VERBOSE
	errors ++;
#endif

	throw std::runtime_error("numerical issue not handled yet in search-hull");
	goto loopStart;
      }
    }

    // Create new facets
    auto newFacets = sequence<linkedFacet3d*>(frontierEdges.size());

    //std::cout << "create:\n";
    for (size_t i=0; i<frontierEdges.size(); ++i) {
      typename _hullTopology<linkedFacet3d, vertex3d, origin3d>::_edge e = frontierEdges.at(i);
      newFacets[i] = new linkedFacet3d(e.a, e.b, apex);
      //std::cout << *newFacets[i] << "\n";
    }
    //std::cout << "\n";

    // Connect new facets
    for (size_t i=0; i<frontierEdges.size(); ++i) {
      context->linkFacet(newFacets[i],
		newFacets[(i+1)%frontierEdges.size()],
		frontierEdges.at(i).ff,
		newFacets[(i-1+frontierEdges.size())%frontierEdges.size()]
		);
    }

    context->setHull(newFacets[0]);

#ifdef HULL_SERIAL_VERBOSE
    createTime += t.get_next();
#endif

    context->redistribute(make_slice(facetsBeneath), make_slice(newFacets));

#ifdef HULL_SERIAL_VERBOSE
    splitTime += t.stop();
#endif

    // Delete existing facets
    //std::cout << "delete:\n";
    for(int j=0; j<facetsBeneath.size(); ++j) {
      //std::cout << *facetsBeneath[j] << "\n";
      delete facetsBeneath.at(j);
    }
    //std::cout << "\n";

    // context->printFacets();
    // std::cout << "check hull\n";
    // context->printHull(context->H, false);
    // std::cout << "end round\n";
  }

#ifdef HULL_SERIAL_VERBOSE
  cout << "apex-time = " << apexTime << endl;
  cout << "frontier-time = " << frontierTime << endl;
  cout << "create-time = " << createTime << endl;
  cout << "split-time = " << splitTime << endl;
  cout << "#-rounds = " << round << endl;
  cout << "#-errors = " << errors << endl;
#endif
}
