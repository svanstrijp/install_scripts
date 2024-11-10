#!/bin/bash
# Description: Netcat Listener on Port 443 in a screen session
# Place this script in /etc/init.d/ to run on startup

# Start the listener in a detached screen session
/usr/bin/screen -dmS nc_listener /usr/bin/nc -nlvp 443
