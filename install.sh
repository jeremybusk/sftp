#!/usr/bin/env bash
set -exo pipefail

sudo apt-get update
sudo apt-get install -y nftables openssh-server python3 shellcheck

shellcheck osfiles/usr/local/sbin/sftpuseradd
pip3 install flake8
flake8

pip3 install -r requirements.txt

sudo cp -p osfiles/etc/nftables.conf /etc/
sudo systemctl reload nftables 
sudo nft list ruleset

sudo cp -p osfiles/etc/ssh/sshd_config /etc/ssh/
# systemctl enable sshd
sudo systemctl reload sshd
sudo cp -p osfiles/usr/local/sbin/sftpuseradd /usr/local/sbin/
