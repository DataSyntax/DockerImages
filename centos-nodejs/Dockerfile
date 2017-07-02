FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@proofpilot.com>"

RUN yum -y update && yum -y install --setopt=tsflags=nodocs gcc-c++ make nodejs bzip2 npm nodejs-devel \
    nginx \
    && yum clean all

RUN npm install --global gulp-cli webpack@1.14.0 webpack-dev-server@1.16.2

EXPOSE 80 443



