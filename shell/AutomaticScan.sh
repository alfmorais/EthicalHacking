#!/bin/bash

echo -n "ALVO [+]: "
read alvo

echo -n "PORTA/PORTAS [+]: "
read ports

echo -n "TIMMING o-5 [+]: "
read tim

echo "[=] Scanning de Portas TCP"
sudo nmap -T$tim -sS $alvo -p$ports > scanning_$alvo.txt
echo "__________________________________________________" >> scanning_$alvo.txt

echo "[=] Scanning de Portas UDP"
sudo nmap -T$tim -sU $alvo -p$ports >> scanning_$alvo.txt
echo "__________________________________________________" >> scanning_$alvo.txt

echo "[=] Scanning de Serviços"
sudo nmap -T$tim -sV $alvo -p$ports >> scanning_$alvo.txt
echo "__________________________________________________" >> scanning_$alvo.txt

echo "[=] Scanning de Sistema Operacional"
sudo nmap -T$tim -O $alvo -p$ports >> scanning_$alvo.txt
echo "__________________________________________________" >> scanning_$alvo.txt
