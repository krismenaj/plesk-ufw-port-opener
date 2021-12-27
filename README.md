## plesk-ufw-port-opener
A small script that opens all the necessary ports with UFW for Plesk to function properly.

## Description
Since I run many servers, I was always catching myself adding manually the ports that need to be open on UFW. As this became really boring, I wrote a small script that adds all the necessary ports for Plesk and it's services.

## How to run the script
- Login as root in your server
- Copy the script to the folder of your choice
- Set run permissions
- ```chmod +x ufwplesk.sh```

## Which ports will be opened?
The ports that will be opened are all listed in the official Plesk article:
https://support.plesk.com/hc/en-us/articles/213932745-Which-ports-should-be-opened-in-the-firewall-on-a-Plesk-server

The passive ports are not added in the script.

In case you'd like to add more ports to the script, then you could just edit the corresponding arrays with the corresponding port.
