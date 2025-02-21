#include "cuPrintf.cu"

#include "stdio.h"

#include "surf_emulator.h"

__global__ void device_greetings(void){

        cuPrintf("Hello world, form the device %d \n",5);

}


SurfaceEmulator *d_surf;

__global__ void kernel(SurfaceEmulator **d_s,int n,int m){
	//*d_s = new SurfaceEmulator(m,n);
 //   (*d_s)->write(2,3,3.14);
//    double d = 0.0;
//    d = (*d_s)->read(2,3);
    cuPrintf("surf read \n");

}




int main(){

        //greet from the host

        //printf("Hello world, from the host\n");

//intitialize cuPrintf

        cudaPrintfInit();

//launch the kernel with a single thread

        kernel<<<1,1>>>(&d_surf,3,5);

//display the device's greetings

        cudaPrintfDisplay();

//clean up

        cudaPrintfEnd();

return 0;

}
