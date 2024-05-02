#!/bin/bash

export JAVA_HOME="./jdk"
export CMAKE_ROOT="./cmake"

source ./install.jvm.sh
source ./install.tornadovm.sh
source ./install.cmake.sh

cd ./TornadoVM
make graal-jdk-21


