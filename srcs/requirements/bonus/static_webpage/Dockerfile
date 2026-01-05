FROM alpine:3.22.0

RUN apk upgrade && apk update && apk add --no-cache python3 bash curl

WORKDIR /usr/share/nginx/html

COPY html .

EXPOSE 4243

CMD ["python3", "-m", "http.server", "4243"]
