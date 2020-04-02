#!/bin/bash

# Internal IP
IP=$(hostname -I | awk {'print $1}')

PUBLIC_IP=$(curl -4 ifconfig.co)

if [[ "$PUBLIC_IP" = ";; connection timed out; no servers could be reached" ]]; then 
    PUBLIC_IP="Not Available"
elif [[ "$PUBLIC_IP" = "" ]]; then
    PUBLIC_IP="No external access"
else 
    PUBLIC_IP=$(curl -4 ifconfig.co)
fi
 
INTERNET='📡'

echo -n "#[fg=colour150]$INTERNET #[fg=colour197]$IP | $PUBLIC_IP"