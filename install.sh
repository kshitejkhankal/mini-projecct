#!/bin/sh
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx start
sudo service nginx enable
echo "<h1>Hello im kshitej !!!!! this is my mini project using terraform </h1>" > /var/www/html/index.html



