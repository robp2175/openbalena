ssh root@your_server_ip
apt-get update && apt-get install -y build-essential git apt-transport-https ca-certificates curl software-properties-common
adduser balena
usermod -aG sudo balena
##INstall Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install docker-ce -y

usermod -aG docker balena

##Install docker-compose:
curl -L https://github.com/docker/compose/releases/download/1.23.0-rc3/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

cd ~
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs -y

su balena
git clone https://github.com/balena-io/open-balena.git ~/open-balena
./scripts/quickstart -U <email@address> -P <password> -d mydomain.com

 npm install balena-cli -g --production --unsafe-perm
 
 nano ~/.resinrc.yml
 resinUrl: "mydomain.com"
