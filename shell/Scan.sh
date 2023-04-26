#!/bin/bash

echo "Qual site deseja testar?"
read site

ping -c 1 $site > log.txt

ip=$(cat log.txt | grep "icmp_seq" | cut -d"(" -f2 | cut -d")" -f1)

echo "O endereço IP do site: " $ip

host=$(cat log.txt | grep "received" | cut -d"," -f2)
echo "Resposta:" $host