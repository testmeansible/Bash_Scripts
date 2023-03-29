#!/bin/bash

path_used='/home/john/Downloads'
#update package manger list
# apt-get update -y

# verify whether the curl package is installed or not..
var3=$(sudo curl --version)
if [ -z "$var3" ];
then
echo "Installing curl"

# Install curl package
apt-get install curl -y
else
echo "curl ($var3) is already available";
fi

# Install tar package
var2=$(sudo curl --version)
if [ -z "$var2" ];
then
echo "Installing tar"
apt-get install tar -y
else
echo "tar ($var3) is already available";
fi

# Install dnsmasq package into container
var1=$(sudo curl --version)
if [ -z "$var1" ];
then
echo "Installing dnsmasq"
apt-get install dnsmasq -y
else
echo "dnsmasq ($var1) is already available";
fi

# Download the zimbra package from url
zimbra_url=https://files.zimbra.com/downloads/8.7.11_GA/zcs-8.7.11_GA_1854.UBUNTU16_64.20170531151956.tgz
file_name=$(basename -- $zimbra_url)
# echo $path_used
# echo $file_name
# echo "$path_used"/"$file_name"
var4="$path_used"/"$file_name"
# echo $var4
# [ -f "$var4" ] && echo " exists."
if ! [ -f "$var4" ];
then
echo "Downloading zimbra package"
# curl $zimbra_url -O
curl $zimbra_url -o "$var4"
else
echo "zimbra ($file_name) is already available";
fi

# Untar the downloaded file
# dir_name="$(dirname -- "$(realpath -- "$var4")")"
dir_name=$(basename "$file_name" .tgz)

if [ -d "$path_used"/"$dir_name" ];
then
echo "Extracting zimbra package";
tar -xvf "$var4"

source Desktop/ip_addr_change.sh
echo '' | systemctl status systemd-resolve
else
echo "zimbra ($dir_name) is already available";
fi

source ./ip_addr_change.sh
#echo $ipaddr
source ./config_changes.sh

#reboot
