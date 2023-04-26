#!/bin/bash

network="172.17.0"

for i in {1..254}; do
    status=$(ping -c2 $network.$i)
    response=$(echo $status | grep "received" | cut -d"," -f2 | cut -d" " -f2)

    if (( response > 0 )); then
        echo "O host esta ativo: " $network.$i
    fi
done