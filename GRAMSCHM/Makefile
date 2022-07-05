EXECUTABLE := gramschmidt.exe
CUFILES := gramschmidt.cu

EXECUTABLE_SM := gramschmidt_sharedMem.exe
CUFILES_SM := gramschmidt_sharedMem.cu

EXECUTABLE_SA := gramschmidt_sa.exe
CUFILES_SA := gramschmidt_sa.cu

NVCC_FLAGS := -g -lineinfo

all:
	nvcc -O3 ${CUFILES} -o ${EXECUTABLE} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SM} -o ${EXECUTABLE_SM} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SA} -o ${EXECUTABLE_SA} ${NVCC_FLAGS}
clean:
	rm -f *~ *.exe