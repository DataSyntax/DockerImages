#!/bin/bash

arguments=$*

for i in "$@"
do
case $i in
    --user=*)
    user="${1#*=}"
    shift
    ;;
    --repo=*)
    repo="${1#*=}"
    shift
    ;;
    --tag=*)
    tag="${1#*=}"
    shift
    ;;
    *)
    ;;
esac
done


if [[ !( $repo && $user ) ]]; then echo -e "\nMissing required parameters - repo, user!"; exit; fi

docker image prune -f
docker login
docker build --pull -t $user/$repo $repo/

if [[ ! -z $tag ]]; then
   docker tag $user/$repo $user/$repo:$tag
fi

docker push $user/$repo
docker logout




