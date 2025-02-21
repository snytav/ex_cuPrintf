#include "cuPrintf.cu"

#include "stdio.h"

__global__ void device_greetings(void){

        cuPrintf("Hello world, form the device %d \n",5);

}

int main(){

        //greet from the host

        printf("Helo world, from the host\n");

//intitialize cuPrintf

        cudaPrintfInit();

//launch the kernel with a single thread

        device_greetings<<<1,1>>>();

//display the device's greetings

        cudaPrintfDisplay();

//clean up

        cudaPrintfEnd();

return 0;

}
