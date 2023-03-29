#!/bin/bash
file_path="/etc/network"
old_file_name="interfaces"
new_file_name="interfaces.mod"
mv "$file_path"/"$old_file_name" "$file_path"/"$new_file_name"

interface="ens33"
ipaddr="192.168.76.20"
netmask="255.255.255.0"
gateway="192.168.76.2"

echo "auto ens33" >> "$file_path"/"$old_file_name"
echo "iface $interface inet static" >> "$file_path"/"$old_file_name"
echo "address $ipaddr" >> "$file_path"/"$old_file_name"
echo "netmask $netmask" >> "$file_path"/"$old_file_name"
echo "gateway $gateway" >> "$file_path"/"$old_file_name"

#service network-manager restart
#/etc/init.d/networking restart
#systemstl restart networking
#systemstl restart network-manager
echo ''| ip a
cat "$file_path"/"$old_file_name"
