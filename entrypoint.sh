#! /bin/bash

echo "==========Installing iPerf3=========="
apt update && apt install -y iperf3

echo "==========Starting service=========="

## TODO: Add public IP display

iperf3 -s -p 443