[Unit]
Description=Netcat Listener on Port 443
After=network.target

[Service]
Type=simple
ExecStart=/usr/bin/screen -dmS nc_listener /usr/bin/nc -nlvp 443
Restart=always

[Install]
WantedBy=multi-user.target
