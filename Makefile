all: 2dconv 2mm 3dconv \
	 3mm atax bicg corr \
	 covar fdtd-2d gemm \
	 gesummv gramschm \
	 mvt syr2k syrk

2dconv:
	cd 2DCONV; make;

2mm:
	cd 2MM; make -j;

3dconv:
	cd 3DCONV; make -j;

3mm:
	cd 3MM; make -j;

atax:
	cd ATAX; make -j;

bicg:
	cd BICG; make -j;

corr:
	cd CORR; make -j;

covar:
	cd COVAR; make -j;

fdtd-2d:
	cd FDTD-2D; make -j;

gemm:
	cd GEMM; make -j;

gesummv:
	cd GESUMMV; make -j;

gramschm:
	cd GRAMSCHM; make -j;

mvt:
	cd MVT; make -j;

syr2k:
	cd SYR2K; make -j;

syrk:
	cd SYRK; make -j;


clean: 2dconv_clean 2mm_clean 3dconv_clean \
	 3mm_clean atax_clean bicg_clean corr_clean \
	 covar_clean fdtd-2d_clean gemm_clean \
	 gesummv_clean gramschm_clean \
	 mvt_clean syr2k_clean syrk_clean

2dconv_clean:
	cd 2DCONV; make clean;

2mm_clean:
	cd 2MM; make clean;

3dconv_clean:
	cd 3DCONV; make clean;

3mm_clean:
	cd 3MM; make clean;

atax_clean:
	cd ATAX; make clean;

bicg_clean:
	cd BICG; make clean;

corr_clean:
	cd CORR; make clean;

covar_clean:
	cd COVAR; make clean;

fdtd-2d_clean:
	cd FDTD-2D; make clean;

gemm_clean:
	cd GEMM; make clean;

gesummv_clean:
	cd GESUMMV; make clean;

gramschm_clean:
	cd GRAMSCHM; make clean;

mvt_clean:
	cd MVT; make clean;

syr2k_clean:
	cd SYR2K; make clean;

syrk_clean:
	cd SYRK; make clean;