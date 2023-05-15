#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] install casaos toolkit${NC}"
echo -e "${GREEN}[*] Setting Up everything${NC}"

echo -e "${GREEN}[*] Installing Essentials${NC}"
cat /etc/apt/sources.list | grep "bullseye main contrib non-free" || sudo sed -i "s/bullseye main/bullseye main contrib non-free/g" /etc/apt/sources.list
apt-get update
apt-get install -y build-essential
apt-get install -y gcc
apt-get install -y git
apt-get install -y vim 
apt-get install -y wget 
apt-get install -y curl
apt-get install -y python3
apt-get install -y python-pip 
apt-get install -y dnsutils
apt-get install -y nano
apt-get install -y htop
apt-get install -y lshw
apt-get install -y neofetch
apt-get install -y sudo
apt update
echo -e "${GREEN}[*] What is your cpu (intel) or (amd) right one only ?${NC}"
echo -e "${GREEN}[*] if your cpu intel select 1st or is amd select 2nd"
OPTIONS="select your system cpu"
select opt in OPTIONS; do
    if [["$opt" = "1st-intel"]]; then
        sudo apt-get install intel-microcode
    elif ["$opt" = "2nd-amd64"] then
        sudo apt-get install amd64-microcode
fi
