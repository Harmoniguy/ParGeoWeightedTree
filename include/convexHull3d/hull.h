// #pragma once

// #include "vertex.h"
// #include "facet.h"
// #include "pargeo/point.h"
// #include "pargeo/algebra.h"
// #include "parlay/primitives.h"

// // todo namespace

// namespace pargeo {

//   // namespace hullInternal {

//   //   // // Clockwise oriented 3d facet
//   //   // template <class pt, class att>
//   //   // struct _facet3d {
//   //   //   using pointT = pt;
//   //   //   pt a, b, c;// Indices into P
//   //   //   att attribute;
//   //   //   _facet3d(pt _a, pt _b, pt _c): a(_a), b(_b), c(_c) {
//   //   // 	if (pargeo::determinant3by3(a, b, c) > 0)
//   //   // 	  std::swap(b, c);
//   //   //   }
//   //   // };

//   //   // parlay::sequence<vertex>
//   //   // hull3dSerialInternal(parlay::slice<vertex*, vertex*>);

//   // }

//   // template <class pt>
//   // using facet3d = hullInternal::_facet3d<pt, pargeo::_empty>;

//   // using vertex = hullInternal::vertex;

//   // parlay::sequence<facet3d<pargeo::fpoint<3>>>
//   // hull3dSerial(parlay::sequence<pargeo::fpoint<3>> &);

//   parlay::sequence<pargeo::facet3d<pargeo::fpoint<3>>>
//   hull3dQuadTree(parlay::sequence<pargeo::fpoint<3>> &);

//   // parlay::sequence<pargeo::fpoint<3>>
//   // hull3dSerialInternal(parlay::sequence<pargeo::fpoint<3>> &);

//   // parlay::sequence<facet3d<pargeo::fpoint<3>>>
//   // hull3dSerialInternal(parlay::slice<vertex*, vertex*>);

//   parlay::sequence<facet3d<pargeo::fpoint<3>>>
//   hull3dGrid(parlay::sequence<pargeo::fpoint<3>> &, size_t, bool);

//   parlay::sequence<facet3d<pargeo::fpoint<3>>>
//   hull3dGridConcurrent(parlay::sequence<pargeo::fpoint<3>> &, size_t s = 4, size_t numProc = 0);

// }; // End namespace
