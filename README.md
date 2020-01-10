# TinyCA2 container
This container allows you to have a working TinyCA2 app, reachable via a http noVNC that can be placed behind a reverse proxy.

More information about the noVNC baseimage here : https://github.com/jlesage/docker-baseimage-gui.

Basically, here is a docker-compose exmaple of how to use it :
```
version: '2'
services:
  tinyca:
    image: acaranta/docker-tinyca
    environment:
      - VNC_PASSWORD=<yourVNCpassword>
    volumes:
      - <yourdockervolume>:/app/data:rw
      - <yourdockervolume>:/app/export:rw
    ports:
      - 5800:5800
```

