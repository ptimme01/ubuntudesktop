#!/bin/bash
set -e
REPONAME=ubuntudesktop

### Add git repo (so can have latest git version) and install git
sudo apt update
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

## Install Ansible
sudo apt install -y python3-pip
sudo pip3 install ansible-core==2.12.2

### Clone repository
sudo mkdir -p /root/scm
mkdir -p ~/scm
cd ~/scm
if [[ ! -e ~/scm/$REPONAME ]]; then
git clone https://github.com/ptimme01/$REPONAME.git
fi

cd ~/scm/$REPONAME
find ./ -type f -name "*.sh" -not -executable -exec chmod +x {} \;

cd ./ansible-$REPONAME
./apb.sh build_ansible_control_node.yml

echo "gedit ~/scm/ubuntudesktop/ansible-ubuntudesktop/host_vars/localhost.yml."
echo "This is where the install options are located"
echo "This script will pause until you press Enter."
read
echo "You pressed Enter. Resuming script execution."

./apb.sh build_ubuntu_desktop.yml



