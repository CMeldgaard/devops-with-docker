## 2.9

The following changes where made to match the new reverse proxy in ngins

```
frontend: ENV REACT_APP_BACKEND_URL=http://localhost:8080 -> ENV REACT_APP_BACKEND_URL=/api/
```

```
backend: ENV REQUEST_ORIGIN=http://localhost:5000 -> ENV REQUEST_ORIGIN=/
```
