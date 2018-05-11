FROM datasyntax/ubuntu-base
LABEL maintainer = "Ross Ivantsiv <ross@datasntax.ua>"

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

RUN  sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"

RUN apt-get update && \
apt-get -y install docker-ce









