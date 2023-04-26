#!/bin/bash

echo "Digite o primeiro valor: "
read NUMBER1

echo "Digite o segundo valor: "
read NUMBER2

if (( $NUMBER1 > $NUMBER2 )); then
    echo "O primeiro valor e maior."
elif (( $NUMBER2 > $NUMBER1 )); then
    echo "O segundo valor e maior."
elif (( $NUMBER1 == $NUMBER2 )); then
    echo "os valores sao iguais."
fi
