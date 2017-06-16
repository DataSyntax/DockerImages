FROM datasyntax/ubuntu-base
LABEL maintainer = "Ross Ivantsiv <ross@datasntax.ua>"

ENV DEBIAN_FRONTEND noninteractive

ENV MYSQL_USER=mysql \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/var/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql

RUN \
    apt-get update && \
    apt-get install -y mysql-server && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p ${MYSQL_RUN_DIR} && \
    chown mysql:mysql ${MYSQL_RUN_DIR}

RUN /bin/sed -iE "s/^\(bind-address.*\)/# \1/" /etc/mysql/mysql.conf.d/mysqld.cnf

# Define mountable directories.
VOLUME ["/etc/mysql", "${MYSQL_DATA_DIR}"]

ADD init/mysql.sql /tmp/mysql.sql
RUN chmod 644 /tmp/mysql.sql

ADD entrypoint.sh /entrypoint.sh
RUN chmod 550 /entrypoint.sh

EXPOSE 3306
ENTRYPOINT ["/entrypoint.sh"]







