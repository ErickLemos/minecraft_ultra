#!/bin/bash

if [ -d "cmake" ]; then
    echo "cmake instalado"
else
    echo "instalando cmake"
    arquivo=cmake-3.10.1-Linux-x86_64.tar.gz 
    
    wget https://cmake.org/files/v3.10/$arquivo
    
    mkdir cmake
    tar -xf $arquivo --directory ./cmake

    mv ./cmake/*/* ./cmake/
    rm -r ./cmake/cmake-*
    rm $arquivo
fi

./cmake/bin/cmake -version
