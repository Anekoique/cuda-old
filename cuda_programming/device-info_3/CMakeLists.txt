project(DEVICE_INFO LANGUAGES CUDA CXX)

set(CMAKE_CUDA_ARCHITECTURES 89)
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
add_executable(
	device_info
	./src/main.cpp
	./src/utils.cpp
	./src/matmul.gpu.cu
	)
