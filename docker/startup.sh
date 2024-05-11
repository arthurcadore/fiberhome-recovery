#!/bin/ash

# create a new user for 
useradd x1
mkdir -p /data/x1
chown x1:ftp /data/x1

sed -i '$d' /etc/passwd
echo 1:x:1001:1001::/data/x1: >> /etc/passwd

sed -i '$d' /etc/group
echo 1:!:1001: >> /etc/group

sed -i '$d' /etc/shadow
echo 1:!:19854:0:99999:7::: >> /etc/shadow

echo -e "1\n1" | passwd 1

useradd x2
mkdir -p /data/x2
chown x2:ftp /data/x2

sed -i '$d' /etc/passwd
echo 2:x:1002:1002::/data/x2: >> /etc/passwd

sed -i '$d' /etc/group
echo 1:!:1002: >> /etc/group

sed -i '$d' /etc/shadow
echo 2:!:19854:0:99999:7::: >> /etc/shadow

echo -e "2\n2" | passwd 2

# starts FTP-server
/start-ftp
