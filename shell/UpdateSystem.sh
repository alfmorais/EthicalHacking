#!/bin/bash

echo "Do you wanna update the system? (y/n)"
read answer

if [[ $answer == "y" ]]; then
    sudo apt-get update -y > log.txt
    sudo apt-get upgrade -y >> log.txt
    sudo apt-get autoremove -y >> log.txt 
elif [[ $answer == "n " ]]; then
    echo "The system is not updated."
else
    echo "Invalid choice."
fi
