FROM alpine:3.7

RUN apk update
RUN apk add nginx bash

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/
