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
include src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/compiler_depend.make

# Include the progress variables for this target.
include src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/progress.make

# Include the compile flags for this target's objects.
include src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/flags.make

src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o: src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/flags.make
src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o: /home/mentys/Github/ParGeoWeightedTree/src/convexHull3d/bruteforce/hull.cpp
src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o: src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o -MF CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o.d -o CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o -c /home/mentys/Github/ParGeoWeightedTree/src/convexHull3d/bruteforce/hull.cpp

src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.i"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/mentys/Github/ParGeoWeightedTree/src/convexHull3d/bruteforce/hull.cpp > CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.i

src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.s"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/mentys/Github/ParGeoWeightedTree/src/convexHull3d/bruteforce/hull.cpp -o CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.s

# Object files for target bruteforceHull3dLib
bruteforceHull3dLib_OBJECTS = \
"CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o"

# External object files for target bruteforceHull3dLib
bruteforceHull3dLib_EXTERNAL_OBJECTS =

src/convexHull3d/bruteforce/libbruteforceHull3dLib.a: src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/hull.cpp.o
src/convexHull3d/bruteforce/libbruteforceHull3dLib.a: src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/build.make
src/convexHull3d/bruteforce/libbruteforceHull3dLib.a: src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libbruteforceHull3dLib.a"
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && $(CMAKE_COMMAND) -P CMakeFiles/bruteforceHull3dLib.dir/cmake_clean_target.cmake
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bruteforceHull3dLib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/build: src/convexHull3d/bruteforce/libbruteforceHull3dLib.a
.PHONY : src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/build

src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/clean:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce && $(CMAKE_COMMAND) -P CMakeFiles/bruteforceHull3dLib.dir/cmake_clean.cmake
.PHONY : src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/clean

src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/depend:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mentys/Github/ParGeoWeightedTree /home/mentys/Github/ParGeoWeightedTree/src/convexHull3d/bruteforce /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/convexHull3d/bruteforce/CMakeFiles/bruteforceHull3dLib.dir/depend

