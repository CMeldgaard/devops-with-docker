## 1.4: MISSING DEPENDENCIES

### Creating and running the ubuntu in the container in interactive mode

`docker run -it ubuntu`

### Installing curl in bash, inside the container

`apt-get -y update`
`apt-get -y install curl`

### Running the command

`sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'`

output:

```
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
</body></html>

```
