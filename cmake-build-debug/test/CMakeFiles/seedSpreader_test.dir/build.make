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
include test/CMakeFiles/seedSpreader_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/seedSpreader_test.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/seedSpreader_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/seedSpreader_test.dir/flags.make

test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o: test/CMakeFiles/seedSpreader_test.dir/flags.make
test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o: /home/mentys/Github/ParGeoWeightedTree/test/seedSpreader_test.cpp
test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o: test/CMakeFiles/seedSpreader_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o -MF CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o.d -o CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o -c /home/mentys/Github/ParGeoWeightedTree/test/seedSpreader_test.cpp

test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.i"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mentys/Github/ParGeoWeightedTree/test/seedSpreader_test.cpp > CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.i

test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.s"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mentys/Github/ParGeoWeightedTree/test/seedSpreader_test.cpp -o CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.s

# Object files for target seedSpreader_test
seedSpreader_test_OBJECTS = \
"CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o"

# External object files for target seedSpreader_test
seedSpreader_test_EXTERNAL_OBJECTS =

test/seedSpreader_test: test/CMakeFiles/seedSpreader_test.dir/seedSpreader_test.cpp.o
test/seedSpreader_test: test/CMakeFiles/seedSpreader_test.dir/build.make
test/seedSpreader_test: src/dataset/libdatasetLib.a
test/seedSpreader_test: lib/libgtest.a
test/seedSpreader_test: test/CMakeFiles/seedSpreader_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable seedSpreader_test"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seedSpreader_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/seedSpreader_test.dir/build: test/seedSpreader_test
.PHONY : test/CMakeFiles/seedSpreader_test.dir/build

test/CMakeFiles/seedSpreader_test.dir/clean:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/seedSpreader_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/seedSpreader_test.dir/clean

test/CMakeFiles/seedSpreader_test.dir/depend:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mentys/Github/ParGeoWeightedTree /home/mentys/Github/ParGeoWeightedTree/test /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/CMakeFiles/seedSpreader_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/seedSpreader_test.dir/depend

