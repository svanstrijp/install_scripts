[Unit]
Description=Interactive Persistent Netcat Listener
After=network.target

[Service]
ExecStart=/bin/nc -nlvp 443
Restart=always
RestartSec=10
User=root
StandardInput=tty
StandardOutput=tty
TTYPath=/dev/tty
TTYReset=yes
TTYVHangup=no

[Install]
WantedBy=multi-user.target
