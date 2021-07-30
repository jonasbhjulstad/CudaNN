NVCC=nvcc

CUDAFLAGS= -arch=sm_30

OPT= -g -G

RM=/bin/rm -f

all: main


main: main.cu neural_network.o coordinates_dataset.o
		$(MAKE) -C layers
		$(MAKE) -C nn_utils
		${NVCC} ${OPT} -std=c++11 -c main.cu 
		${NVCC} ${OPT} -o main layers/*.o nn_utils/*.o *.o -L layers/ -L nn_utils/

neural_network.o: neural_network.cu neural_network.hh
		${NVCC} ${OPT} -c -std=c++11 neural_network.cu

coordinates_dataset.o: coordinates_dataset.cu coordinates_dataset.hh
		${NVCC} ${OPT} -c -std=c++11 coordinates_dataset.cu
clean:
		$(MAKE) -C layers/make clean
		$(MAKE) -C nn_utils/make clean
		${RM} *.o IC