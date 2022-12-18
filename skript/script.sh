#!/bin/bash 
cd /home/ubuntu/
mkdir /home/ubuntu/onpk
cd /home/ubuntu/onpk
git clone https://github.com/drajcan-nephthys/kis-onpk
cd /home/ubuntu/onpk/kis-onpk/terraform/projects/minikube/scripts/
chmod 777 *.sh
sudo ./base.sh
sudo ./docker.sh
sudo ./minikube.sh