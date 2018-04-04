FROM alpine:3.7

RUN apk update
RUN apk add nginx bash

RUN mkdir -p /run/nginx

COPY nginx.conf /etc/nginx/

RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

CMD ["nginx", "-g", "daemon off;"]
