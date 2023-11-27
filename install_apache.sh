#!/bin/bash

# Install Apache2
sudo apt update
sudo apt install -y apache2

# Get the instance's public IP address
public_ip=$(curl -s http://169.254.169.254/latest/meta-data/public-ipv4)

# Print the IP address to a local file
echo "Instance Public IP: $public_ip" > instance_ip.txt

# Print a message indicating the installation is complete
echo "Apache2 installation complete."
