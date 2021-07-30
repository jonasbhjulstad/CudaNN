NVCC=nvcc

CUDAFLAGS= -arch=sm_30

OPT= -g -G

all: bce_cost.o matrix.o shape.o

bce_cost.o: bce_cost.cu bce_cost.hh
		${NVCC} ${OPT} -std=c++11 -c bce_cost.cu

matrix.o: matrix.cu matrix.hh
		${NVCC} ${OPT} -std=c++11 -c matrix.cu


shape.o: shape.cu shape.hh
		${NVCC} ${OPT} -std=c++11 -c shape.cu

clean: 
		rm *.o