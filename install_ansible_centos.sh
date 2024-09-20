#!/bin/bash

# Update the system and install EPEL repository for extra packages
echo "Updating the system and installing EPEL repository..."
sudo yum update -y
sudo yum install epel-release -y

# Install Ansible
echo "Installing Ansible..."
sudo yum install ansible -y

# Check if Ansible was installed successfully
if command -v ansible >/dev/null 2>&1; then
    echo "Ansible installed successfully!"
    ansible --version
else
    echo "Ansible installation failed."
    exit 1
fi

# Optional: Create a directory for your Ansible playbooks
mkdir -p ~/ansible-playbooks
echo "Ansible playbooks directory created at ~/ansible-playbooks"

echo "Installation complete! You can now start using Ansible."

