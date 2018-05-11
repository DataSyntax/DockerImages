FROM datasyntax/ubuntu-docker
LABEL maintainer = "Ross Ivantsiv <ross@datasntax.ua>"

RUN apt-get update && \
apt-get -y --no-install-recommends install bzip2 git curl && \
apt-get -y autoclean

ENV NVM_DIR /usr/local/nvm

RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash







