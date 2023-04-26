#!/bin/bash

echo "Digite o nome do serviço: "
read service

sudo service $service status > log.txt

status=$(cat log.txt | grep "running" | cut -d" " -f3)

if [[ $status == "running." ]]; then
    echo "O serviço esta rodando."
else
    echo "O serviço nao esta rodando."
fi
