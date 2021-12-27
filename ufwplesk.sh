#!/bin/bash
# (c) Kristian Menaj
# Allow all the necessary ports for Plesk with UFW

ITALICRED="\e[3;${RED}m"

# TCP allowed ports
tcpports=( 20 21 22 25 53 80 110 143 443 465 587 953 990 993 995 3306 5224 5432 8443 8447 8880 )
# UDP allowed ports
udpports=( 53 123 )

for i in "${tcpports[@]}"
do
        ufw allow $i/tcp
done

for i in "${udpports[@]}"
do
        ufw allow $i/udp
done

echo -e "\n\nFollowing ports are open on your firewall:"
ufw status verbose

echo "Done!"
