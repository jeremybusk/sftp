#!/usr/bin/env bash
set -eo pipefail

echo "test 1 file" > test1.txt
echo "test 2 file" > test2.txt
sftpuseradd --sftp-user jtest1 --sftp-pass jtest1
./sftp-test.py -u jtest1 -p jtest1
date > time.txt
lftp sftp://jtest1:jtest1@127.0.0.1  -e "set ftp:ssl-allow no; put time.txt; quit"
lftp sftp://jtest1:jtest1@127.0.0.1 <<< $'!pwd'
lftp sftp://jtest1:jtest1@127.0.0.1 <<< $'!ls -lat'
# sudo ls -laht /*

# export SSHPASS=jtest3
# sshpass -e sftp -oPort=22 jtest3@127.0.0.1
