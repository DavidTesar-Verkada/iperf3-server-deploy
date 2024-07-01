#! /bin/bash

echo "==========Installing iPerf3=========="
apt update && apt install -y iperf3

echo "==========Starting service=========="
iperf3 -s -p 443