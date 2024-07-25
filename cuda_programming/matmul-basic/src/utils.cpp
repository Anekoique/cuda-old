#include "utils.hpp"
#include <math.h>
#include <random>

void initMatrix(float* data, int size, int min, int max, int seed) {
    srand(seed);
    for (int i = 0; i < size; i ++) {
        data[i] = float(rand()) * float(max - min) / RAND_MAX;
    }
}

void  printMat(float* data, int size) {
    for (int i = 0; i < size; i ++) {
        printf("%.8f", data[i]);
        if (i != size -1 ) {
            printf(", ");
        } else {
            printf("\n");
        }
    }
}

void compareMat(float* h_data, float* d_data, int size) {
    double precision = 1.0e-4;
    bool error = false;
    for (int i = 0; i < size; i ++) {
        if (abs(h_data[i] - d_data[i]) > precision) {
            error = true;
            printf("res is different in %d, cpu: %.8lf, gpu: %.8lf\n", i, h_data[i], d_data[i]);
            break;
        }
    }
    if (error) printf("ERROR: result is different\n");
    else printf("SUCCESS: result is correct\n");
}