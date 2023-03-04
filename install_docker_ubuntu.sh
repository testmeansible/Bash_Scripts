#!/bin/bash
# apt update
# echo "$?"

source_url="https://desktop.docker.com/linux/main/amd64/docker-desktop-4.16.2-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64" 
file_name="docker-desktop-4.16.2-amd64.deb"
download_path="/home/$USER/Downloads/$file_name"
# echo "$download_path"
temp=$(find /home/"$USER"/Downloads -iname "$file_name" -type f)
# find_cmd_exit_code=$?
# echo "${find_cmd_exit_code}"

# echo "$find_cmd_exit_code"

if [ -n "$temp" ];
then
    echo "File already exists"
else
    echo 'File does not exists!'
    echo 'Downloading Docker-Desktop-'
    wget "$source_url" -O "$download_path"
    wget_cmd_exit_code=$?
    if [ $wget_cmd_exit_code -eq 0 ];
    then
    echo 'file downloaded successfully'
    else
    echo 'File download was unsuccessfull!'
    fi
fi

