# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stoair/tensorRT/cuda_programming/dim_and_index

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stoair/tensorRT/cuda_programming/dim_and_index/build

# Include any dependencies generated for this target.
include CMakeFiles/cuda_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/cuda_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cuda_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cuda_test.dir/flags.make

CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o: CMakeFiles/cuda_test.dir/flags.make
CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o: ../src/Grid_span_cycle.cu
CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o: CMakeFiles/cuda_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stoair/tensorRT/cuda_programming/dim_and_index/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o"
	/usr/local/cuda-12.1/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o -MF CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o.d -x cu -c /home/stoair/tensorRT/cuda_programming/dim_and_index/src/Grid_span_cycle.cu -o CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o

CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target cuda_test
cuda_test_OBJECTS = \
"CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o"

# External object files for target cuda_test
cuda_test_EXTERNAL_OBJECTS =

../bin/cuda_test: CMakeFiles/cuda_test.dir/src/Grid_span_cycle.cu.o
../bin/cuda_test: CMakeFiles/cuda_test.dir/build.make
../bin/cuda_test: CMakeFiles/cuda_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stoair/tensorRT/cuda_programming/dim_and_index/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CUDA executable ../bin/cuda_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cuda_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cuda_test.dir/build: ../bin/cuda_test
.PHONY : CMakeFiles/cuda_test.dir/build

CMakeFiles/cuda_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cuda_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cuda_test.dir/clean

CMakeFiles/cuda_test.dir/depend:
	cd /home/stoair/tensorRT/cuda_programming/dim_and_index/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stoair/tensorRT/cuda_programming/dim_and_index /home/stoair/tensorRT/cuda_programming/dim_and_index /home/stoair/tensorRT/cuda_programming/dim_and_index/build /home/stoair/tensorRT/cuda_programming/dim_and_index/build /home/stoair/tensorRT/cuda_programming/dim_and_index/build/CMakeFiles/cuda_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cuda_test.dir/depend

