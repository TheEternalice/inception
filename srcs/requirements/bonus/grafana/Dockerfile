FROM alpine:3.22.0

RUN apk update && apk upgrade && apk add --no-cache libc6-compat curl

RUN mkdir -p /var/lib/grafana && cd /var/lib/grafana && \
	curl -L -O https://dl.grafana.com/oss/release/grafana-7.4.1.linux-amd64.tar.gz && \
	tar -zxvf grafana-7.4.1.linux-amd64.tar.gz --strip-components=1 && \
	rm grafana-7.4.1.linux-amd64.tar.gz

WORKDIR /var/lib/grafana

EXPOSE 3000/tcp

CMD ["./bin/grafana-server"]
