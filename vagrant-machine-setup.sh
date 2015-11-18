echo "=========================================="
echo "Provision VM START"
echo "=========================================="

sudo apt-get update

###############################################
# Initial Setup
###############################################
# https://github.com/mitchellh/vagrant/issues/1188 Correctly set locale to mongo works
sudo su
echo 'LC_ALL="en_US.UTF-8"'  >  /etc/default/locale
exit

###############################################
# Install Git
###############################################
sudo apt-get -y install git

###############################################
# Install Unzip
###############################################
sudo apt-get -y install unzip

###############################################
# Install NodeJS
###############################################
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get -y install nodejs
ln -s /usr/bin/nodejs /user/bin/node
# Add node_modules to environment variables
echo "export NODE_PATH=/usr/local/lib/node_modules" >> ~/.bashrc

###############################################
# Install NPM
###############################################
sudo apt-get -y install npm

###############################################
# Install MongDB
###############################################
echo "Download MongoDB..."
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
sudo apt-get update
sudo apt-get -y install mongodb-org
echo "MongDB done."
###############################################
# Show installation summary
###############################################
echo "=========================================="
echo "Provision VM summary"
echo "=========================================="
echo "Dependencies installed:"
echo " "
echo "NodeJS version:"
node -v
echo " "
echo "NPM version"
npm -v
echo " "
echo "mongoDB version"
mongod --version
echo " "
echo "mongo client version"
mongo --version