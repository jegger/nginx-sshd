nginx-sshd
=================

Just a skeleton to use when in need of a running nginx server with ssh/sftp/scp access to its file structure and shell.
Get the compiled image from the Docker Index here: https://index.docker.io/u/jegger/nginx-sshd/

You can define the ssh credentials by setting the env variables:
- SSH_USERNAME
- SSH_PW

Build it with:
-------------
`docker build -t jegger/nginx-sshd .`  
(Upload it with: `docker push jegger/nginx-sshd`)

Start it with this command:
---------------------------
`docker run -ti -p 8080:80 -p 222:22 -e SSH_USERNAME=hans -e SSH_PASSWORD=gwuest jegger/nginx-sshd`

Use it by
----------
- You can now checkout the nginx page by accessing it via localhost:8080  
- You can now login to the container via shh by  
`ssh -p 222 $USERNAME@localhost`
- For testing, it makes sense to not store the fingerprint:  
`ssh -o "UserKnownHostsFile /dev/null" -p 222 $SSH_USERNAME@localhost`