EXECUTABLE := gramschmidt.exe
CUFILES := gramschmidt.cu

EXECUTABLE_SM := gramschmidt_sharedMem.exe
CUFILES_SM := gramschmidt_sharedMem.cu

EXECUTABLE_SA := gramschmidt_sa.exe
CUFILES_SA := gramschmidt_sa.cu

EXECUTABLE_SA65 := gramschmidt_sa65.exe
CUFILES_SA65 := gramschmidt_sa65.cu

NVCC_FLAGS := -g -lineinfo

all:
	nvcc -O3 ${CUFILES} -o ${EXECUTABLE} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SM} -o ${EXECUTABLE_SM} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SA} -o ${EXECUTABLE_SA} ${NVCC_FLAGS}
	nvcc -O3 ${CUFILES_SA65} -o ${EXECUTABLE_SA65} ${NVCC_FLAGS}
clean:
	rm -f *~ *.exe