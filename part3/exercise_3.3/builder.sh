#!/usr/bin/bash
if test "$#" -ne 2; then
        echo "Command format: $0 githubuser/reponame dockerhubuser/reponame"
        exit
fi

#Clone from github
git clone https://github.com/$1 tmp

#Build and push to dockerhub
docker build ./tmp -t container
docker login
docker tag container $2
docker push  $2

#Clean up folder
rm -rf ./tmp
