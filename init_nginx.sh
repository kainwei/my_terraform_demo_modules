sudo apt-get -y update
sleep 1
sudo apt-get -y install nginx
sleep 1
sudo sed -i 's/Welcome to nginx/Welcome To Kain\x27s Terraform Presentation/g' /var/www/html/index.nginx-debian.html
sudo service nginx start
