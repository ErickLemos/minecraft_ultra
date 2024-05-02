#!/bin/bash

if [ -d "jdk" ]; then
    echo "graal vm instalada"
else
    echo "instalando graal vm"
    graal_vm_file=graalvm-community-jdk-21.0.1_linux-x64_bin.tar.gz
    
    wget https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-21.0.1/$graal_vm_file
    
    mkdir jdk
    tar -xf $graal_vm_file --directory ./jdk
    
    mv ./jdk/*/* ./jdk/
    rm -r ./jdk/graalvm-*
    rm $graal_vm_file
fi