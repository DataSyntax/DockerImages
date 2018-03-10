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


docker run --rm --entrypoint "/bin/bash" -ti $user/$repo -l



