FROM datasyntax/centos-base

LABEL maintainer = "Ross Ivantsiv <ross@datasyntax.ua>"

RUN yum -y update && yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
    yum-config-manager --enable remi,remi-php71 && \
    yum -y install --setopt=tsflags=nodocs php \
    php-devel \
    php-fpm \
    php-gd \
    php-intl \
    php-mcrypt \
    php-pdo \
    php-mysql \
    php-redis \
    php-xmlreader \
    php-xmlwriter \
    php-xmlrpc \
    php-mbstring \
    php-xdebug \
    php-json \
    php-iconv \
    php-opcache \
    && yum clean all

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin && \
    mv /usr/bin/composer.phar /usr/bin/composer && \
    chmod a+x /usr/bin/composer

RUN wget https://phar.phpunit.de/phpunit.phar && \
    chmod +x phpunit.phar && \
    mv phpunit.phar /usr/bin/phpunit

COPY entrypoint.sh /entrypoint.sh
RUN chmod 0755 /entrypoint.sh

EXPOSE 9000



