## 1.9: VOLUMES

```
touch text.log
docker run -d -v $(pwd)/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
```

output:

```
2023-06-14 19:58:37 +0000 UTC
2023-06-14 19:58:39 +0000 UTC
2023-06-14 19:58:41 +0000 UTC
2023-06-14 19:58:43 +0000 UTC
2023-06-14 19:58:45 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
2023-06-14 19:58:47 +0000 UTC
2023-06-14 19:58:49 +0000 UTC
2023-06-14 19:58:51 +0000 UTC
2023-06-14 19:58:53 +0000 UTC
2023-06-14 19:58:55 +0000 UTC
```
