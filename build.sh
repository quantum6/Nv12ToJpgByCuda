#! /bin/sh
pwd=`pwd`
echo --------------- build $pwd ------------------

export C_INCLUDE_PATH=/usr/local/cuda-9.2/include/:/usr/local/cuda-9.2/samples/7_CUDALibraries/common/UtilNPP/:/usr/local/cuda-9.2/samples/common/inc/:$C_INCLUDE_PATH
export CPP_INCLUDE_PATH=$C_INCLUDE_PATH

nvcc q6_jpegnpp.cpp \
    --compiler-options "-Wall -Wfatal-errors -Ofast -DOPENCV -DGPU -DCUDNN -fPIC" \
    -I /usr/local/cuda/samples/common/inc \
    -I /usr/local/cuda/samples/7_CUDALibraries/common/UtilNPP  \
    -shared -o libq6jpegnpp.so
