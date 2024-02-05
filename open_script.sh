#!/bin/bash
  sudo yum -y update && sudo yum -y install httpd
  sudo systemctl start httpd && sudo systemctl enable httpd
  sudo echo "<h1>DONE VIA terraform by Thickthumb30<h1>" > /var/www/html/index.html

  sudo yum -y install docker
  sudo systemctl start docker
  sudo usermod -aG docker ec2-user

  sudo docker container run -p 8080:80 nginx
  
