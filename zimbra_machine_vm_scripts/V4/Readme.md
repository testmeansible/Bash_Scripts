### How to setup zimbra vulnerabel machine

Step 1. Change the IP settings in (ip_addr_change.sh) file and save the changes.

Step 2. Run the modified.sh file.

Step 3. After successful execution of script reboot the system.

Step 4. Check the staus of dnsmasq service

Step 5. If dnmasq service is running go to zcs[*] directory in downloads (where the zcs files are unziped).

setp 6. Run the ./install.sh file to install the zimbra service.

Step 7. View the installation progress from specified log file  in /tmp/ directory (file name is provided by the installation script)

Step 8. Press y to install all packages except (zimbra dnscache package)

Step 9. Setup domain name to short name (z.ctf) when promoted for domain change (displays an error)

Step 10. Set the Admin password

Step 11. Follow the instruction shown accordingly and press a to apply changes.

Step 12. Allow to Save the config file

Step 13. Allow (Yes) to make system modifications.

Step 14. Verify the zimbra service by switching user to zimbra and check for (zmcontrol status)


### How to setup Attack machine to exploit zimbra vulnerale machine

Step 1. check the ip address

Step 2. Reset your network settings (Add DNS - zimbra machine ip)

Step 3. Ensure connectivity among zimbra and attacker machine (ping both machines)

Step 4. Run nslookup for zimbra domain.

Step 5(a).1 Clone github repo https://github.com/nth347/Zimbra-RCE-exploit.git 

Step 5(a).2 change dir to github dir

Step 5(a).3 edit the exploit.sh file

Step 5(a).4 Add target information (zimbra machine-domain name(mail.z.ctf)) and host the dir (python web server) that hosts the _dtd file-required while 
exploiting the zimbra)

Step 5(a).5 After successfull exploit you will be presented with a remote webshell - (Perform your next task as required) 
