FROM datasyntax/ubuntu-php70
LABEL maintainer = "Ross Ivantsiv <ross@datasntax.ua>"

RUN npm install -g coffee-script@1.7.1 handlebars@1.0.12 gulp@3.9.1 gulp-install@0.6.0 gulp-concat@2.6.0

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin && \
    mv /usr/bin/composer.phar /usr/bin/composer && \
    chmod a+x /usr/bin/composer








