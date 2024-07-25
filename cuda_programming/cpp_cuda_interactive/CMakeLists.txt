cmake_minimum_required(VERSION 3.11)
project(CPP_CUDA LANGUAGES CUDA CXX)

set(CMAKE_CUDA_ARCHITECTURES 89)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(cpp_cuda ./src/main.cpp ./src/print_index.cu)
