!#/bin/bash
clear;
apt update -y
python3 get-pip.py
pip3 install ansible
apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt install -y docker-ce
apt-get install docker-compose -y
clear
sleep 2
clear
echo "PRESS ENTER FOR THE FOLLOWING PROMPTS"
ssh-keygen
cp /root/.ssh/id_rsa.pub .
docker build -t ansible_ssh:V1 .
rm -rf id_rsa.pub
clear
docker-compose up -d 
echo "
"
echo ""
docker ps
