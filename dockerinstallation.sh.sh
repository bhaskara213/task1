# it is the docker and docker installation script
apt-get update 
apt-get install java
#to installpython
apt-get install python -y
# before docker installing pacjages update
apt-get update
# for docker installing commands
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
# to set up repsoitiory
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
# add docker offical repo key	
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# installing repo
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
#upating packages
sudo apt-get update
# installing dokcer
apt-get install docker-ce -y

# installing docker compose
sudo curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
