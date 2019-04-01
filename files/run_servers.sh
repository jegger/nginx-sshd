#!/bin/bash

# Create new user
echo "Creating user $SSH_USERNAME"
useradd -m -s /bin/bash $SSH_USERNAME
echo $SSH_USERNAME:$SSH_PASSWORD | chpasswd

echo "Starting sshd:"
/usr/sbin/sshd
echo "Starting nginx in non daemon mode:"
/usr/sbin/nginx -g 'daemon off;'