#!/bin/bash

rm dist -rf
rm build -rf
rm app.spec -rf
rm appbuild -rf

sudo apt-get install -y  mysql-server
sudo apt-get install -y libmysqlclient-dev
sudo apt-get install -y python-dev
sudo pip install mysql-python
sudo pip install pyinstaller
sudo pip install tornado
sudo pip install requests
sudo pip install torndb
sudo pip install supervisor

pyinstaller app.py

mv dist/app ./appbuild
mv appbuild/app appbuild/aleserver
cp static templates appbuild -rf
mkdir appbuild/log

rm dist -rf
rm build -rf
rm app.spec -rf

