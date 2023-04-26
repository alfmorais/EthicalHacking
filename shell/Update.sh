#!/bin/bash

echo "Atualizando o sistema..."
sudo apt-get update -y > log.txt
sudo apt-get upgrade -y >> log.txt
echo "Atualizaçao completa..."
