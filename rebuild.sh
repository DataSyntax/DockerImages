#!/bin/bash


docker login

docker build -t datasyntax/ubuntu-base ubuntu-base/
docker build -t datasyntax/ubuntu-mysql ubuntu-mysql/
docker build -t datasyntax/ubuntu-php70 ubuntu-php70/
docker build -t datasyntax/ubuntu-nginx ubuntu-nginx/

docker push datasyntax/ubuntu-base
docker push datasyntax/ubuntu-mysql
docker push datasyntax/ubuntu-php70
docker push datasyntax/ubuntu-nginx
