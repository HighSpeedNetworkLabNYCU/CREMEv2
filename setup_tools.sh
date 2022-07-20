#!/bin/bash

sudo apt update
sudo apt install expect -y
sudo apt install python3-pip -y
sudo apt install python-is-python3
# virtual environment
sudo apt install python3-venv -y

# install ssh server
sudo apt install openssh-server -y

# install atop
sudo apt install atop -y

# install argus-serer and argus-client
wget http://qosient.com/argus/src/argus-3.0.8.2.tar.gz
wget http://qosient.com/argus/src/argus-clients-3.0.8.2.tar.gz

tar -xvzf argus-3.0.8.2.tar.gz
tar -xvzf argus-clients-3.0.8.2.tar.gz

sudo apt update
sudo apt install flex -y
sudo apt install bison -y
sudo apt install libpcap-dev -y
sudo apt install tmux -y

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

#install redis
cd -
wget http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz -O ~/
cd redis-stable
make MALLOC=libc
cd -
chown -R $(whoami):$(whoami) redis-stable
