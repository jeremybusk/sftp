#!/usr/bin/env bash
set -exo pipefail

sudo apt-get update
sudo apt-get install -y python3
pip install -r requirements.txt

sudo apt-get install -y openssh-server
# apt-get install python3
sudo cp -p osfiles/etc/ssh/sshd_config /etc/ssh/sshd_config
# systemctl enable sshd
sudo systemctl reload sshd
sudo cp -p osfiles/usr/local/sbin/sftpuseradd /usr/local/sbin/
