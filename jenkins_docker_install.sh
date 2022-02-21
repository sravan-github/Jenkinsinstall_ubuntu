#!/bin/bash
git clone https://github.com/sravan-github/Jenkinsinstall_ubuntu.git
cd Jenkinsinstall_ubuntu
sh ansible_install.sh
ansible-playbook jenkins.yml
ansible-playbook docker_install.yml
sudo chmod 777 /var/run/docker.sock
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
