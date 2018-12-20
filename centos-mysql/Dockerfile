FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@datasyntax.ua>"

RUN yum -y update && yum -y install --setopt=tsflags=nodocs mariadb-server \
&& yum clean all


COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

EXPOSE 3306



