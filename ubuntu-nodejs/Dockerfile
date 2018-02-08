FROM datasyntax/ubuntu-base
LABEL maintainer = "Ross Ivantsiv <ross@datasntax.ua>"

RUN cd ~ && \
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
chmod 0755 nodesource_setup.sh && \
./nodesource_setup.sh

RUN apt-get update && \
apt-get -y --no-install-recommends install nodejs bzip2 git && \
apt-get clean

RUN npm install --global gulp-cli rimraf gulp-rimraf webpack@2.6.1 webpack-dev-server@2.5.0






