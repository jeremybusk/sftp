#!/usr/bin/env bash
set -eo pipefail

apt-get update
apt-get install -y openssh-server
# apt-get install python3
cp -p osfiles/etc/ssh/sshd_config /etc/ssh/sshd_config
# systemctl enable sshd
systemctl reload sshd
cp -p osfiles/usr/local/sbin/sftpuseradd /usr/local/sbin/
