#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}[*] install casaos toolkit intel${NC}"
echo -e "${GREEN}[*] Setting Up everything${NC}"
echo -e "${GREEN}[*] Installing Essentials${NC}"
sleep 5
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
apt-get install -y amd64-microcode
apt update
echo " ${GREEN}[*] Setting up Casaos${NC} "
sleep 5 
curl -fsSL https://get.casaos.io | sudo bash