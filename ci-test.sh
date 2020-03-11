#!/usr/bin/env bash
set -eo pipefail

echo "test 1 file" > test1.txt
echo "test 2 file" > test2.txt
sftpuseradd --sftp-user jtest1 --sftp-pass jtest1
./sftp-test.py -u jtest1 -p jtest1
# sudo ls -laht /sftp/*
sudo ls -laht /sftp/jtest1/*
