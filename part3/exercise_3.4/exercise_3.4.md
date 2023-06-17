## 3.3: BUILDING IMAGES INSIDE OF A CONTAINER

Bash shell script for cloning repo from github, build it and publish to dockherhub

Usage:

```
docker run -e DOCKER_USER=username \
  -e DOCKER_PWD=password \
  -v /var/run/docker.sock:/var/run/docker.sock \
  builder githubrepouser/reponame dockerhub/reponame
```
