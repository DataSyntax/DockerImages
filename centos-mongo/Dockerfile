FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@proofpilot.com>"

ADD mongodb.repo /etc/yum.repos.d/mongodb-org.repo

RUN yum -y update && yum -y install --setopt=tsflags=nodocs mongodb-org-server mongodb-org-shell mongodb-org-tools \
&& yum clean all

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

EXPOSE 16928



