#!/bin/bash

# Define colors
GREEN="\e[32m"
RED="\e[31m"
CYAN="\e[36m"
RESET="\e[0m"

# ASCII Banner
echo -e "${CYAN}"
echo "      _        _           _   "
echo "     / \   __| |_ __ ___ (_)_ "
echo "    / _ \ / _\ | '_ \` _ \| | |
    / ___ \ (_| | | | | | | | |
   /_/   \_\__,_|_| |_| |_|_|_|
"
echo -e "${RESET}"
echo -e "${GREEN}ApkTool Installer for Kali Linux${RESET}"
echo -e "${GREEN}Copyright (C) Hackersking${RESET}\n"

# Download ApkTool script
echo -e "${CYAN}Downloading ApkTool script...${RESET}"
wget -q --show-progress https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool

# Download latest ApkTool jar
echo -e "${CYAN}Downloading ApkTool jar...${RESET}"
wget -q --show-progress https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.11.0.jar

# Rename jar file
mv apktool_2.11.0.jar apktool.jar

# Move files to /usr/local/bin
echo -e "${CYAN}Installing ApkTool...${RESET}"
sudo mv apktool /usr/local/bin && sudo mv apktool.jar /usr/local/bin
chmod +x /usr/local/bin/apktool
chmod +x /usr/local/bin/apktool.jar

# Installation complete message
echo -e "${GREEN}ApkTool has been installed successfully!${RESET}"
