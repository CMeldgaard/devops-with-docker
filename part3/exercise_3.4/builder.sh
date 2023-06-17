#!/usr/bin/bash
if test "$#" -ne 2; then
        echo "Command format: $0 githubuser/reponame dockerhubuser/reponame"
        exit
fi

#Clone from github
git clone https://github.com/$1 tmp

#Build and push to dockerhub, using ENV variables
docker build ./tmp -t container
docker login --username=$DOCKER_USER --password=$DOCKER_PWD
docker tag container $2
docker push  $2

#Clean up folder
rm -rf ./tmp
