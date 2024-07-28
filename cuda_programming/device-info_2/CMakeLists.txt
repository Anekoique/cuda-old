cmake_minimum_required(VERSION 3.10)
project(MyProject LANGUAGES CUDA CXX)

set(CUDA_VER "12.1")
set(SRC_PATH "src")
set(CUDA_DIR "/usr/local/cuda-${CUDA_VER}/lib64")
find_library(CUDART_PATH cudart ${CUDA_DIR})

file(GLOB_RECURSE CXX_SRC "${SRC_PATH}/*.cpp")
file(GLOB_RECURSE CUDA_SRC "${SRC_PATH}/*.cu")

add_executable(MyExecutable ${CXX_SRC} ${CUDA_SRC})
target_link_libraries(MyExecutable ${CUDART_PATH}) 
target_include_directories(MyExecutable PUBLIC ./src/include)
