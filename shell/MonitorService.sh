#!/bin/bash

echo "Digite o nome do serviço: "
read service

while true; do
    status=$(sudo service $service status | grep "running" | cut -d" " -f3)
    
    if [[ $status == "running." ]]; then
        echo "O serviço esta ativo."
        sleep 2
    fi

done