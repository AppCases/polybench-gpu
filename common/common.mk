NVCC_FLAGS := -g -lineinfo

all:
	nvcc -O3 ${CUFILES} -o ${EXECUTABLE} ${NVCC_FLAGS}
clean:
	rm -f *~ *.exe