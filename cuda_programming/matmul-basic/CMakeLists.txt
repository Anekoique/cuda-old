cmake_minimum_required(VERSION 3.11)
project(matmul LANGUAGES CUDA CXX)

set(CMAKE_CUDA_ARCHITECTURES 89)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(
	matmul 
	./src/main.cpp 
	./src/matmul_gpu.cu 
	./src/matmul_cpu.cpp
	./src/utils.cpp
)
