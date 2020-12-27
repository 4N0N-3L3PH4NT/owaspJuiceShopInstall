#!/bin/bash

echo 'This can take a few minutes to be installed. So grab a coffee and relax!!'



#check for command line arguments 
if [ "$1" = "" ]; then
    echo 'installing owasp juice shop in current directory.'
elif [ "$1" != "" ]; then
    echo 'installing owasp juice shop in '$1
    cd $1
    
fi

git clone https://github.com/bkimminich/juice-shop.git
cd juice-shop
npm install

if [ "$2" = "-r" ]; then
    echo "starting the aplication"
    npm start