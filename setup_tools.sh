#!/bin/bash

# install python 3.5
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get update
sudo apt-get install python3.5 build-essential libssl-dev libffi-dev python3.5-dev -y

sudo apt-get update
sudo apt-get install expect -y

# virtual environment
sudo apt-get install python-virtualenv -y

# install ssh server
sudo apt-get install openssh-server -y

# install atop
sudo apt-get install atop -y

# install argus-serer and argus-client
wget http://qosient.com/argus/src/argus-3.0.8.2.tar.gz
wget http://qosient.com/argus/src/argus-clients-3.0.8.2.tar.gz

tar -xvzf argus-3.0.8.2.tar.gz
tar -xvzf argus-clients-3.0.8.2.tar.gz

sudo apt-get update
sudo apt-get install flex -y
sudo apt-get install bison -y
sudo apt-get install libpcap-dev -y
sudo apt-get install tmux -y

cd argus-3.0.8.2
chmod +x configure
./configure
sudo make install

cd -

cd argus-clients-3.0.8.2
chmod +x configure
./configure
sudo make install
sudo make install

cd -