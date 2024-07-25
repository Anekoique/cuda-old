#ifndef __UTILS_HPP__
#define __UTILS_HPP__

#include <cuda_runtime.h>
#include <system_error>

#define CUDA_CHECK(call)        __cudaCheck(call, __FILE__, __LINE__)
#define LAST_KERNEL_CHECK()     __kernelCheck(__FILE__, __LINE__) 
#define BLOCKSIZE 16

inline static void __cudaCheck(cudaError_t err, const char * file, const int line)
{
    if (err != cudaSuccess) {
        printf("ERORO: %s:%d, ", file, line);
        printf("CODE:%s, DETAIL:%s\n", cudaGetErrorName(err), cudaGetErrorString(err));
    }
}

inline static void __kernelCheck(const char * file, const int line)
{
    cudaError_t err = cudaPeekAtLastError();
    if (err != cudaSuccess) {
        printf("ERORO: %s:%d, ", file, line);
        printf("CODE:%s, DETAIL:%s\n", cudaGetErrorName(err), cudaGetErrorString(err));
        exit(1);
    }
}

void initMatrix(float * data, int size, int low, int high, int seed);
void printMat(float * data, int size);
void compareMat(float * h_data, float * d_data, int size);

#endif // __UTILS_HPP__
