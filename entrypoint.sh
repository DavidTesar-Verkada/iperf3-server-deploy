#! /bin/bash

echo "==========Installing iPerf3=========="
apt update && apt install -y iperf3

echo "==========Starting service=========="

echo "Public IP address is: $(curl -s ifconfig.me)"

iperf3 -s -p 443