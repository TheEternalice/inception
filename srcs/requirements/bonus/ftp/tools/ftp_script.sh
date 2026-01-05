#!/bin/sh

if ! id -u "$FTP_USER" >/dev/null 2>&1; then
	adduser -D -h /srv/www/wordpress "$FTP_USER"
	echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
fi

while [ ! -f /srv/www/wordpress/index.php ]; do
	sleep 2
done

echo "Starting vsftpd..."
exec /usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
