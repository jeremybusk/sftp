# sftp

This will help build sftp server and test user.

# Install
```
apt-get update
apt-get install -y openssh-server
```

# Check that ssh tcp/22 is listening  
```
ss -lnt | grep 22
```

# Files involved

```
/etc/passwd
/etc/shadow
/etc/group
/etc/ssh/sshd_config
/usr/local/bin/sftpuseradd
```

# References 
- https://serverfault.com/questions/910789/chroot-sftp-possible-to-allow-user-to-write-to-current-chroot-directory
- https://serverfault.com/questions/868092/how-do-i-create-a-user-with-a-password-in-one-line-in-bash-on-redhat
- https://www.tecmint.com/sftp-command-examples/

# Notes
```
# echo "username:password" | chpasswd
````

# Other Options Using FTPS or Postgres

## VSFTP  

- https://hostadvice.com/how-to/how-to-install-and-configure-vsftpd-on-ubuntu-18-04/

## ProFTPd & Postgres  

- https://www.howtoforge.com/proftpd_postgresql_auth_logging
