///// https://forums.developer.nvidia.com/t/can-i-use-operator-new-in-device-code/37594ii

#include "surf2Dread.h"
#include<stdio.h>
#include "cuPrintf.cu"

SurfaceEmulator *d_surf;

__global__ void kernel(SurfaceEmulator **d_s,int n,int m){
	*d_s = new SurfaceEmulator(m,n);
    (*d_s)->write(2,3,3.14);
    double d = 0.0;
    d = (*d_s)->read(2,3);
    printf("surf read %e\n",d);

}


int main(){


  cudaPrintfInit();
  kernel<<<1,1>>>(&d_surf,3,5);
  cudaDeviceSynchronize();
  cudaPrintfDisplay();


}
