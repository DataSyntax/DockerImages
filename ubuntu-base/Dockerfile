FROM ubuntu:16.04
LABEL maintainer = "Ross Ivantsiv <ross@datasyntax.ua>"

RUN apt-get update && \
apt-get install -y \
iputils-ping \
iputils-tracepath \
net-tools \
telnet \
curl \
wget \
traceroute \
dnsutils \
nano \
mc \
sudo \
apt-transport-https \
ca-certificates \
software-properties-common \
cifs-utils \
nfs-common \
git


RUN echo "type -p -a mc >/dev/null && alias mc=\". /usr/share/mc/bin/mc-wrapper.sh\"" >> /etc/profile && \
    echo "source /etc/profile" >> /root/.bashrc

ENV TERM=xterm
ENV EDITOR=nano

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]





