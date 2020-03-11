#!/usr/bin/env python3
import pysftp
import argparse
parser = argparse.ArgumentParser()
parser.add_argument("-u", "--username", required=True,
                    help="sftp user to test")
parser.add_argument("-p", "--userpass", required=True,
                    help="sftp user password")
args = parser.parse_args()

# cnopts = pysftp.CnOpts(hostfile)
# cnopts.hostkeys.load('known_hosts')

cnopts = pysftp.CnOpts()
cnopts.hostkeys = None  # disable key verify

with pysftp.Connection('localhost',
                       username=args.username,
                       password=args.userpass,
                       cnopts=cnopts,
                       port=22) as sftp_session:

    sftp_session.put('test1.txt')
    sftp_session.get('test1.txt')
    sftp_session.put('test2.txt')
    sftp_session.get('test2.txt')


# with sftp_session.cd('/somedir')
# sftp_session.close()
