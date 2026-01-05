FROM alpine:3.22.0

RUN apk update && apk add --no-cache php83 php83-session php83-mysqli php83-pdo php83-pdo_mysql bash wget

WORKDIR /var/www/html

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php -O adminer.php && \
    chmod 644 adminer.php

EXPOSE 8080

CMD ["php83", "-S", "0.0.0.0:8080", "-t", "/var/www/html"]
