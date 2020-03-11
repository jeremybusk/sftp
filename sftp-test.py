#!/usr/bin/env python3
import pysftp

# cnopts = pysftp.CnOpts(hostfile)
# cnopts.hostkeys.load('known_hosts')

cnopts = pysftp.CnOpts()
cnopts.hostkeys = None  # disable key verify

with pysftp.Connection('localhost', username='jtest1', password='jtest1', cnopts=cnopts, port=22) as sftp_session:
    sftp_session.put('test1.txt')
    sftp_session.get('test1.txt')
    sftp_session.put('test2.txt')
    sftp_session.get('test2.txt')


# with sftp_session.cd('/somedir')
# sftp_session.close()
