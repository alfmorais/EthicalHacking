#!/bin/bash

sudo ifconfig wlan0 | grep "netmask" | cut -d" " -f10