# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/mentys/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/231.9011.31/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/mentys/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/231.9011.31/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mentys/Github/ParGeoWeightedTree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug

# Include any dependencies generated for this target.
include benchmark/CMakeFiles/spatialGraph_bench.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include benchmark/CMakeFiles/spatialGraph_bench.dir/compiler_depend.make

# Include the progress variables for this target.
include benchmark/CMakeFiles/spatialGraph_bench.dir/progress.make

# Include the compile flags for this target's objects.
include benchmark/CMakeFiles/spatialGraph_bench.dir/flags.make

benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o: benchmark/CMakeFiles/spatialGraph_bench.dir/flags.make
benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o: /home/mentys/Github/ParGeoWeightedTree/benchmark/spatialGraph_bench.cpp
benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o: benchmark/CMakeFiles/spatialGraph_bench.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o -MF CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o.d -o CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o -c /home/mentys/Github/ParGeoWeightedTree/benchmark/spatialGraph_bench.cpp

benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.i"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mentys/Github/ParGeoWeightedTree/benchmark/spatialGraph_bench.cpp > CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.i

benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.s"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mentys/Github/ParGeoWeightedTree/benchmark/spatialGraph_bench.cpp -o CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.s

# Object files for target spatialGraph_bench
spatialGraph_bench_OBJECTS = \
"CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o"

# External object files for target spatialGraph_bench
spatialGraph_bench_EXTERNAL_OBJECTS =

benchmark/spatialGraph_bench: benchmark/CMakeFiles/spatialGraph_bench.dir/spatialGraph_bench.cpp.o
benchmark/spatialGraph_bench: benchmark/CMakeFiles/spatialGraph_bench.dir/build.make
benchmark/spatialGraph_bench: src/spatialGraph/libspatialGraphLib.a
benchmark/spatialGraph_bench: src/euclideanMst/libemstLib.a
benchmark/spatialGraph_bench: _deps/benchmark-build/src/libbenchmark_main.a
benchmark/spatialGraph_bench: src/delaunayTriangulation/libdelaunay2dLib.a
benchmark/spatialGraph_bench: _deps/benchmark-build/src/libbenchmark.a
benchmark/spatialGraph_bench: benchmark/CMakeFiles/spatialGraph_bench.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable spatialGraph_bench"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spatialGraph_bench.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
benchmark/CMakeFiles/spatialGraph_bench.dir/build: benchmark/spatialGraph_bench
.PHONY : benchmark/CMakeFiles/spatialGraph_bench.dir/build

benchmark/CMakeFiles/spatialGraph_bench.dir/clean:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark && $(CMAKE_COMMAND) -P CMakeFiles/spatialGraph_bench.dir/cmake_clean.cmake
.PHONY : benchmark/CMakeFiles/spatialGraph_bench.dir/clean

benchmark/CMakeFiles/spatialGraph_bench.dir/depend:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mentys/Github/ParGeoWeightedTree /home/mentys/Github/ParGeoWeightedTree/benchmark /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/benchmark/CMakeFiles/spatialGraph_bench.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : benchmark/CMakeFiles/spatialGraph_bench.dir/depend

