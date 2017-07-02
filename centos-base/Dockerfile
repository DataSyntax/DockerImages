FROM centos:7

LABEL maintainer = "Ross Ivantsiv <ross@proofpilot.com>"

#######################################################################################################################
###     Install some prerequisites
#######################################################################################################################
RUN yum update -y && \
    yum install -y --setopt=tsflags=nodocs epel-release \
    openssh-server \
    sudo \
    telnet \
    git \
    mc \
    wget \
    libselinux-python \
    nano \
    tar \
    which \
    net-tools \
    bind-utils

RUN echo "type -p -a mc >/dev/null && alias mc=\". /usr/libexec/mc/mc-wrapper.sh\"" >> /etc/profile && \
    echo "source /etc/profile" >> /root/.bashrc

RUN groupadd sites && \
    useradd -m -g sites sites && \
    chown sites:sites /home/sites && \
    chmod 755 /home/sites

ENV TERM=xterm
ENV EDITOR=nano

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]





