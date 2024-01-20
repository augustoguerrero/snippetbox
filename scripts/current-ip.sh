#!/bin/bash

# Get the IP address of the eth0 interface
IP=$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# Write the IP address to the .env file
echo "HOST=$IP" > .env
