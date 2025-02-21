test_print:  ex_cuPrintf.cu
	nvcc -o test_print -g ex_cuPrintf.cu
clean:
	rm test_print
