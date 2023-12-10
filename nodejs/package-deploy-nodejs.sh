#!/bin/bash

## Pastikan sudah install git untuk clone script ini

# update base
sudo apt update
sudo apt upgrade -y

# Install tool tambahan
sudo apt install -y neofetch htop

# Install Nginx
sudo apt install -y nginx

# Install PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc

# Install Node.js dan npm menggunakan NVM
nvm install node
nvm use node

# Install Yarn & PM2 (Process Manager for Node.js)
npm install -g yarn pm2

# Tampilkan informasi versi setelah instalasi selesai
echo "Installed software versions:"
echo "PostgreSQL $(psql --version)"
echo "Nginx $(nginx -v 2>&1 | grep -oE 'nginx/[0-9]+\.[0-9]+\.[0-9]+')"
echo "Node.js $(node --version)"
echo "npm $(npm --version)"
echo "Yarn $(yarn --version)"
echo "PM2 $(pm2 -v)"

# Restart Nginx untuk menerapkan perubahan
sudo systemctl restart nginx
