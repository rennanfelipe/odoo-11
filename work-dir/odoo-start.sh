#!/bin/bash

#Author: Rennan Felipe
#Email: rennan.chaves95@gmail.com
#Version: 1.5.0
#Licence: MIT 

if [ $USER != 'root' ]
then
    echo "Run this script as a root!"
    exit 9
fi

service odoo start

echo "Started in: localhost:8069"