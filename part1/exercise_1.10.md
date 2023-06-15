## EXERCISE 1.10: PORTS OPEN

```
docker build . -t webserver
docker run -p 3000:8080 webserver
```

output:

`http://localhost:3000/`

```json
{
  "message": "You connected to the following path: /",
  "path": "/"
}
```
