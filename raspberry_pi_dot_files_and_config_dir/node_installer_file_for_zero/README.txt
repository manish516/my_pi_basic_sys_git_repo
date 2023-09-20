to install the node in pi zero armv6, use these commands

wget https://nodejs.org/dist/v11.15.0/node-v11.15.0-linux-armv6l.tar.gz

tar -xzf node-x.x.x.tar.gz
cd node-x.x.x
./configure --dest-cpu=arm --dest-os=linux
make -j4
sudo make install
node -v
npm -v
