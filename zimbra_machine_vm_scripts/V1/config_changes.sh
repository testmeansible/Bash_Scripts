#!/bin/bash


#listen-address

#  Changes in /etc/hosts file
file_path="/etc"
old_file_name="hosts"
new_file_name="hosts.org"
host=mail.z.ctf
cp "$file_path"/"$old_file_name" "$file_path"/"$new_file_name"
rm "$file_path"/"$old_file_name"
touch "$file_path"/"$old_file_name"
echo "127.0.0.1		localhost" >> "$file_path"/"$old_file_name"
echo "$ipaddr		mail.z.ctf mail" >> "$file_path"/"$old_file_name"
cat "$file_path"/"$old_file_name"

#  Changes in /etc/hostname file
file_path="/etc"
old_file_name="hostname"
new_file_name="hostname.org"
cp "$file_path"/"$old_file_name" "$file_path"/"$new_file_name"
rm "$file_path"/"$old_file_name"
touch "$file_path"/"$old_file_name"
echo "mail.z.ctf" >> "$file_path"/"$old_file_name"
cat "$file_path"/"$old_file_name"

#  Changes in /etc/resolv.conf file
file_path="/etc"
old_file_name="resolv.conf"
new_file_name="resolv.conf.org"
cp "$file_path"/"$old_file_name" "$file_path"/"$new_file_name"
rm "$file_path"/"$old_file_name"
touch "$file_path"/"$old_file_name"
echo "nameserver 127.0.0.1" >> "$file_path"/"$old_file_name"
#echo "nameserver 8.8.8.8" >> "$file_path"/"$old_file_name"
cat "$file_path"/"$old_file_name"


#  Changes in /etc/dnsmasq.conf file
file_path="/etc"
old_file_name="dnsmasq.conf"
new_file_name="dnsmasq.conf.org"
cp "$file_path"/"$old_file_name" "$file_path"/"$new_file_name"
rm "$file_path"/"$old_file_name"
touch "$file_path"/"$old_file_name"
echo "domain-needed" >> "$file_path"/"$old_file_name" 
echo "bogus-priv" >> "$file_path"/"$old_file_name" 
echo "expand-hosts" >> "$file_path"/"$old_file_name" 
echo "no-dhcp-interface=$interface" >> "$file_path"/"$old_file_name" 
echo "server=$ipaddr" >> "$file_path"/"$old_file_name" 
echo "listen-address=$ipaddr" >> "$file_path"/"$old_file_name" 
echo "listen-address=127.0.0.1" >> "$file_path"/"$old_file_name" 
echo "domain=z.ctf" >> "$file_path"/"$old_file_name" 
echo "mx-host=z.ctf,mail.z.ctf,0" >> "$file_path"/"$old_file_name" 
echo "address=/mail.z.ctf/$ipaddr" >> "$file_path"/"$old_file_name" 
echo "address=/mail.z.ctf/127.0.0.1" >> "$file_path"/"$old_file_name" 
cat "$file_path"/"$old_file_name"
