#!/bin/bash

rm dist -rf
rm build -rf
rm app.spec -rf
rm appbuild -rf

sudo apt-get install -y  mysql-server
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y python-dev

sudo easy_install pip
sudo pip install mysql-python --upgrade
sudo pip install tornado --upgrade
sudo pip install requests --upgrade
sudo pip install torndb --upgrade

./bin/initdb

