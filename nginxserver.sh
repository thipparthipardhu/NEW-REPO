#!/bin/bash
# Check if Nginx service is running
if sudo systemctl is-active --quiet nginx; then
    echo "Nginx is already running."
else
    # Start Nginx service
    sudo systemctl start nginx
    echo "Nginx service started."
fi
