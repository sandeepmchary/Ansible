sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl restart apache2
sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql 
echo 
<?php
phpinfo();
?> |sudo tee /var/www/html/onfo.php