cmake_minimum_required(VERSION 3.10)
project(SHARE_MEMORY LANGUAGES CUDA CXX)

set(CMAKE_CUDA_ARCHITECTURES 89)
set(CUDA_VER "12.1")
set(SRC_PATH "src")
set(CUDA_DIR "/usr/local/cuda-${CUDA_VER}")
link_directories(${CUDA_DIR}/lib64)
list(APPEND LIBS "cudart" "cublas" "cudnn") 

file(GLOB_RECURSE CXX_SRC "${SRC_PATH}/*.cpp")
file(GLOB_RECURSE CUDA_SRC "${SRC_PATH}/*.cu")

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(share_memory ${CXX_SRC} ${CUDA_SRC})
target_link_libraries(share_memory ${LIBS})
