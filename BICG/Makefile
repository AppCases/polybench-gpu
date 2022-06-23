EXECUTABLE := bicg.exe
CUFILES := bicg.cu

EXECUTABLE_SM := bicg_shareMem.exe
CUFILES_SM := bicg_shareMem.cu

NVCC_FLAGS := -g -lineinfo

all:
	nvcc -O3 ${CUFILES} -o ${EXECUTABLE} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SM} -o ${EXECUTABLE_SM} ${NVCC_FLAGS}
clean:
	rm -f *~ *.exe

