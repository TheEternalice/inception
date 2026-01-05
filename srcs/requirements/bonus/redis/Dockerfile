FROM alpine:3.22.0

RUN apk upgrade && apk update && apk add --no-cache redis bash

COPY conf/redis.conf /etc/redis/redis.conf

EXPOSE 6379/tcp

CMD ["redis-server", "/etc/redis/redis.conf"]
