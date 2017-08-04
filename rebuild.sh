#!/bin/bash


docker login

docker build -t datasyntax/ubuntu-base ubuntu-base/
docker build -t datasyntax/ubuntu-mysql ubuntu-mysql/
docker build -t datasyntax/ubuntu-php70 ubuntu-php70/
docker build -t datasyntax/ubuntu-nginx ubuntu-nginx/
docker build -t datasyntax/ubuntu-php70-npm ubuntu-php70-npm/
docker build -t datasyntax/centos-base centos-base/
docker build -t datasyntax/centos-ocpu centos-ocpu/
docker build -t datasyntax/centos-nginx centos-nginx/
docker build -t datasyntax/centos-mysql centos-mysql/
docker build -t datasyntax/centos-php56 centos-php56/
docker build -t datasyntax/centos-mongo centos-mongo/
docker build -t datasyntax/centos-redis centos-redis/
docker build -t datasyntax/centos-php71 centos-php71/
docker build -t datasyntax/centos-nodejs centos-nodejs/

docker push datasyntax/ubuntu-base
docker push datasyntax/ubuntu-mysql
docker tag datasyntax/ubuntu-php70 datasyntax/ubuntu-php70:1.2
docker push datasyntax/ubuntu-php70
docker push datasyntax/ubuntu-nginx
docker tag datasyntax/ubuntu-php70-npm datasyntax/ubuntu-php70-npm:1.2
docker push datasyntax/ubuntu-php70-npm
docker push datasyntax/centos-base
docker push datasyntax/centos-ocpu
docker push datasyntax/centos-nginx
docker push datasyntax/centos-mysql
docker push datasyntax/centos-php56
docker push datasyntax/centos-mongo
docker push datasyntax/centos-redis
docker push datasyntax/centos-php71
docker push datasyntax/centos-nodejs



