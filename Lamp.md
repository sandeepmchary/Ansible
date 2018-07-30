Installing from https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-16-04
sudo apt-get update
sudo apt-get install apache2
sudo apt-get restart apache2
Then access the webpage
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo systemctl restart apache2
create file @ /var/www/html/info.php
<?php
    phpinfo();
?>