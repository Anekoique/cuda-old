cmake_minimum_required(VERSION 3.11)
project(CUDA_TEST LANGUAGES CUDA CXX)

set(CMAKE_CUDA_ARCHITECTURES 89)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(cuda_test ./src/Grid_span_cycle.cu)
add_executable(print_index ./src/print_index.cu)
