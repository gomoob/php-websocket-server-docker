# Supported tags and respective `Dockerfile` links

-	[`1.1.0`, `latest` (*1.1.0/Dockerfile*)](https://github.com/gomoob/php-websocket-server-docker/blob/master/1.1.0/Dockerfile)
-	[`1.0.3` (*1.0.3/Dockerfile*)](https://github.com/gomoob/php-websocket-server-docker/blob/master/1.0.3/Dockerfile)

# What is php-websocket-server ?

[php-websocket-server](https://github.com/gomoob/php-websocket-server "php-websocket-server") is a PHP WebSocket server based on the [Ratchet](http://socketo.me "Ratchet") server. One of the main goals of the Gomoob WebSocket server is to provide a powerful tags management system to easily choose to which clients to send messages.

# How to use this image.

```console
$ docker run --name php-websocket-server -d -p 80:80 gomoob/php-websocket-server:1.1.0
```

*WARNING* : Please note that under Windows the server will be accessible at `http://192.168.99.100` in 
this case.

The default behavior of the server started in the container is to support the `Message` PHP message objects and the `ApplicationsAuthManager` authorization  manager integrated into the `php-websocker-server` library. If you need to support other kind of messages and authorization parameters please read the following sub-sections.

## Authorizations

By default the container is started with an `auth.yml` configuration file read by an `ApplicationsAuthManager` authorization manager component.

The default content of the `auth.yml` configuration file is the following.

```yaml
applications:
  -
    key: application
    secret: password
    authorizeOpen: true
```

If you want to add additional applications you can provide your own `auth.yml` configuration file using a Docker volume.

```console
$ docker run --name php-websocket-server -d -p 8080:80 -v /home/joe/auth.yml:/etc/auth.yml gomoob/php-websocket-server:1.0.3
```

## About Gomoob

At [Gomoob](https://www.gomoob.com) we build high quality software with awesome Open Source frameworks everyday. Would 
you like to start your next project with us? That's great! Give us a call or send us an email and we will get back to 
you as soon as possible !

You can contact us by email at [contact@gomoob.com](mailto:contact@gomoob.com) or by phone number 
[(+33) 6 85 12 81 26](tel:+33685128126) or [(+33) 6 28 35 04 49](tel:+33685128126).

Visit also http://gomoob.github.io to discover more Open Source softwares we develop.
