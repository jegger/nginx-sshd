FROM ubuntu:18.04


RUN apt-get update && apt-get install nginx openssh-server -y

ADD files/default /etc/nginx/sites-enabled/
# ADD files/index.html /sites/
RUN mkdir /sites
ADD files/run_servers.sh /
RUN mkdir /var/run/sshd

RUN echo LANG="en_US.UTF-8" > /etc/default/locale

RUN chmod 777 -R /sites
EXPOSE 80 22

CMD ["sh", "/run_servers.sh"]
