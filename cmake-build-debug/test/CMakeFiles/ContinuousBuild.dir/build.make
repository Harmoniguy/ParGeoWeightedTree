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

# Utility rule file for ContinuousBuild.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/ContinuousBuild.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/ContinuousBuild.dir/progress.make

test/CMakeFiles/ContinuousBuild:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && /home/mentys/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/231.9011.31/bin/cmake/linux/x64/bin/ctest -D ContinuousBuild

ContinuousBuild: test/CMakeFiles/ContinuousBuild
ContinuousBuild: test/CMakeFiles/ContinuousBuild.dir/build.make
.PHONY : ContinuousBuild

# Rule to build all files generated by this target.
test/CMakeFiles/ContinuousBuild.dir/build: ContinuousBuild
.PHONY : test/CMakeFiles/ContinuousBuild.dir/build

test/CMakeFiles/ContinuousBuild.dir/clean:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousBuild.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/ContinuousBuild.dir/clean

test/CMakeFiles/ContinuousBuild.dir/depend:
	cd /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mentys/Github/ParGeoWeightedTree /home/mentys/Github/ParGeoWeightedTree/test /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test /home/mentys/Github/ParGeoWeightedTree/cmake-build-debug/test/CMakeFiles/ContinuousBuild.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/ContinuousBuild.dir/depend

