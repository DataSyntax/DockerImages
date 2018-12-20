FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@datasyntax.ua>"

RUN yum -y update && yum -y install --setopt=tsflags=nodocs nginx libopenssl-devel \
&& yum clean all

EXPOSE 80 443



