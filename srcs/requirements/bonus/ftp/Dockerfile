FROM alpine:3.22.0

RUN apk upgrade && apk update && apk add --no-cache vsftpd bash

COPY conf/vsftpd.conf /etc/vsftpd/vsftpd.conf

COPY tools/ftp_script.sh /usr/bin/ftp_script.sh

RUN chmod +x /usr/bin/ftp_script.sh

EXPOSE 21 21000-21010

CMD ["ftp_script.sh"]
