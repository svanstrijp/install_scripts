[Unit]
Description=Netcat Listener on Port 443
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/screen -dmS nc_listener /usr/bin/nc -nlvp 443
ExecStop=/usr/bin/killall -w -s SIGTERM screen
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
