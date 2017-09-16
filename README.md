# caddy-docker
Docker image for Caddy built from source

## Run
```
docker run -d \
    -e "CADDYPATH=/etc/caddy-certs" \
    -v $HOME/.caddy:/etc/caddy-certs \
    -p 80:80 -p 443:443\
    vedhavyas/caddy
``` 