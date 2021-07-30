NVCC=nvcc

CUDAFLAGS= -arch=sm_30

OPT= -g -G

all: linear_layer.o relu_activation.o sigmoid_activation.o

linear_layer.o: linear_layer.cu linear_layer.hh
		${NVCC} ${OPT} -std=c++11 -c linear_layer.cu

relu_activation.o: relu_activation.cu relu_activation.hh
		${NVCC} ${OPT} -std=c++11 -c relu_activation.cu


sigmoid_activation.o: sigmoid_activation.cu sigmoid_activation.hh
		${NVCC} ${OPT} -std=c++11 -c sigmoid_activation.cu

clean: 
		rm *.o