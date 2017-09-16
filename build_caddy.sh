#!/usr/bin/env bash

s=`pwd`

# fetch the caddy source
go get -u github.com/mholt/caddy
go get -u github.com/caddyserver/builds

# start the build
cd $GOPATH/src/github.com/mholt/caddy/caddy
go run build.go
./caddy -version

# copy build to s
cp caddy $s
cd $s


