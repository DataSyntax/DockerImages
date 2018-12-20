FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@datasyntax.ua>"

RUN yum -y update && \
    yum -y install epel-release && \
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    wget https://centos7.iuscommunity.org/ius-release.rpm && \
    rpm -Uvh ius-release*.rpm

ADD mariadb.repo  /etc/yum.repos.d/MariaDB.repo

RUN yum -y update && \
    yum install -y --setopt=tsflags=nodocs php56u \
    php56u-devel \
    php56u-fpm \
    php56u-gd \
    php56u-intl \
    php56u-mcrypt \
    php56u-pdo \
    php56u-mysql \
    php56u-redis \
    php56u-xmlreader \
    php56u-xmlwriter \
    php56u-xmlrpc \
    php56u-mbstring \
    php56u-xdebug \
    php56u-sockets \
    php56u-pcntl \
    php56u-phar \
    php56u-openssl \
    php56u-curl \
    php56u-dom \
    php56u-bz2 \
    php56u-pear \
    php56u-ctype \
    php56u-tokenizer \
    php56u-redis \
    php56u-json \
    php56u-zip \
    php56u-soap \
    php56u-gmp \
    php56u-fileinfo \
    php56u-iconv \
    MariaDB-client \
    && yum clean all

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin
RUN mv /usr/bin/composer.phar /usr/bin/composer
RUN chmod a+x /usr/bin/composer

RUN wget https://phar.phpunit.de/phpunit.phar

RUN chmod +x phpunit.phar

RUN mv phpunit.phar /usr/bin/phpunit

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

EXPOSE 9000



