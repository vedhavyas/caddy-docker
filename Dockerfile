FROM alpine:latest

LABEL maintainer="Vedhavyas <vedhavyas.singareddi@gmail.com>"

ADD ./caddy /

# Get certificates since we need for http requests
RUN apk add --update ca-certificates
RUN update-ca-certificates

USER nobody

ENTRYPOINT ["/caddy"]

EXPOSE 80 443