#!/usr/bin/env bash
set -eo pipefail

echo "test 1 file" > test1.txt
echo "test 2 file" > test2.txt
./sftp-test.py
