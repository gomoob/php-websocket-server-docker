# Supported tags and respective `Dockerfile` links

-	[`1.0.3`, `latest` (*7.0/Dockerfile*)](https://github.com/gomoob/php-websocket-server-docker/blob/d6b446a77a77c8247e2206be8f966fdb24516862/1.0.3/Dockerfile)

# What is php-websocket-server ?

[php-websocket-server](https://github.com/gomoob/php-websocket-server "php-websocket-server") is a PHP WebSocket server 
based on the [Ratchet](http://socketo.me "Ratchet") server. One of the main goals of the Gomoob WebSocket server is 
to provide a powerful tags management system to easily choose to which clients to send messages.

# How to use this image.

```console
$ docker run --name php-websocket-server -d -p 8080:80 gomoob/php-websocket-server:1.0.3
```

*WARNING* : Please note that under Windows the server will be accessible at `http://192.168.99.100:8080` in 
this case.

The default behavior of the server started in the container is to support the `Message` PHP message objects and the `ApplicationsAuthManager` authorization manager integrated into the `php-websocker-server` library. If you
need to support other kind of messages and authorization parameters please read the following sub-sections.

## Authorizations

By default the container is started with an `auth.yml` configuration file read by an `ApplicationsAuthManager`
authorization manager component.

The default content of the `auth.yml` configuration file is the following.

```yaml
applications:
  -
    key: application
    secret: password
    authorizeOpen: true
```

If you want to add additional applications you can provide your own `auth.yml` configuration file using a Docker 
volume.

```console
$ docker run --name php-websocket-server -d -p 8080:80 -v /home/joe/auth.yml:/etc/auth.yml gomoob/php-websocket-server:1.0.3
```
