#!/bin/bash
sudo su
sudo apt-get install httpd -y
cd /var/www/html
echo "<html></h1>Welcome to Terraform learning!</h1></html>" > index.html
sudo systemctl start httpd
chmod +x insatllHttpd.sh
