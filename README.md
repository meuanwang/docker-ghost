# jaedsada/ghost-cms

### How to start

```sh
$ docker pull jaedsada/ghost
```

#### basic start
```sh
$ docker run -d --name ghost jaedsada/ghost #url http://hostname:2368
```

#### custom port
```sh
$ docker run -d -p 1111:2368 -e url=http://localhost:1111 --name ghost jaedsada/ghost
```

---

#### Custom theme
```
$ docker run -d -p 1111:2368 \ 
    -v $(pwd)/theme/myblog:/var/www/ghost/content/themes/myblog \
    -e url=http://localhost:1111 \
    --name ghost jaedsada/ghost
```
