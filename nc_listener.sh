#!/bin/bash
# Description: Netcat Listener on Port 443
# Place this script in /etc/init.d/ to run on startup

/usr/bin/nc -nlvp 443
