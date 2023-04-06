all:
	nvcc -O3 ${CUFILES} -o ${EXECUTABLE} -arch=sm_70
clean:
	rm -f *~ *.exe
