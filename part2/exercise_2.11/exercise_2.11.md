## 2.11

The docker-compose file is used for local development, running on the same containers as out production server.
The PHP is devided into two seperate container. 1 is the production version, and the other is for debugging with XDebug.
When we activate Xdebug, the nginx routes all request to the XDebug container.

Volumes are shared to minimize maintenance and out frontend build runs in it's own container.
