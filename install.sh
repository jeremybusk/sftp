#!/usr/bin/env bash
set -exo pipefail

sudo apt-get update
sudo apt-get install -y openssh-server python3
pip install -r requirements.txt

sudo cp -p osfiles/etc/ssh/sshd_config /etc/ssh/sshd_config
# systemctl enable sshd
sudo systemctl reload sshd
sudo cp -p osfiles/usr/local/sbin/sftpuseradd /usr/local/sbin/
