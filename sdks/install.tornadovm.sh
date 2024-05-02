#!/bin/bash

if [ -d "TornadoVM" ]; then
  echo "tornadovm instalado"
else
  echo "instalando tornadovm"
  git clone https://github.com/beehive-lab/TornadoVM.git
fi