#/bin/bash

#Author: Rennan Felipe
#Email: rennan.chaves95@gmail.com
#Version: 1.5.0
#Licence: MIT 

if [ $USER != 'root' ]
then
    echo "Run this script as a root!"
    exit 9
fi

#DATABASE SETUP:
apt-get install postgresql -y

#WKHTMKTOPDF SETUP:
apt-get remove wkhtmltopdf -y
apt-get autoremove

wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

tar -xf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

sudo cp wkhtmltox/bin/wkhtmltoimage /usr/bin/
sudo cp wkhtmltox/bin/wkhtmltopdf /usr/bin/

#REPOSITORY:
wget -O - https://nightly.odoo.com/odoo.key | apt-key add -
echo "deb http://nightly.odoo.com/11.0/nightly/deb/ ./" >> /etc/apt/sources.list.d/odoo.list

#INSTALL
apt-get update -y 
apt-get install odoo -y
