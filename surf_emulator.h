#ifndef SURF_2D_READ_H


class SurfaceEmulator{
    int N,M;
public:
    __device__ SurfaceEmulator(int n,int m){
        N = n; M = m;
        matrix = new double[N*M];
    }
    double *matrix;

    __device__ double read( int i, int j)
    {
        return matrix[i*M+j];
    }
    __device__ double write( int i, int j,double d)
    {
        matrix[i*M+j] = d;
    }

};

#endif
