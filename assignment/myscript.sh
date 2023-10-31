#!/bin/bash
sudo yum install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
echo "<h1>Welcome to my terraform scripted ec2 server!!!</h1>" > "/usr/share/nginx/html/index.html"
