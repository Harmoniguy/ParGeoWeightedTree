# CMake generated Testfile for 
# Source directory: /home/mentys/Github/ParGeoWeightedTree/test
# Build directory: /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(kdTree_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/kdTree_test")
set_tests_properties(kdTree_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;45;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(dynKdTree_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/dynKdTree_test")
set_tests_properties(dynKdTree_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;50;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(closetPair_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/closestPair_test")
set_tests_properties(closetPair_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;57;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(wspd_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/wspd_test")
set_tests_properties(wspd_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;62;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(hull_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/hull_test")
set_tests_properties(hull_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;71;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(dataset_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/dataset_test")
set_tests_properties(dataset_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;76;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(seb_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/seb_test")
set_tests_properties(seb_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;85;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
add_test(seedSpreader_test "/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/seedSpreader_test")
set_tests_properties(seedSpreader_test PROPERTIES  _BACKTRACE_TRIPLES "/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;92;add_test;/home/mentys/Github/ParGeoWeightedTree/test/CMakeLists.txt;0;")
subdirs("../googletest-build")
