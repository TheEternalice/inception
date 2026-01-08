# Services provided by the stack
- **Nginx:** as webserver
- **WordPress:** as webapp
- **Mariadb:** as data base for wordpress
- **Redis:** cache manager for wordpress
- **Adminer:** database handler
- **FTP server:** pointing on wordpress
- **Static webpage**
- **Grafana:** interactive visualization web application

## Get started
At the root of the projet:
- To start just do
```bash
make
```
- To clean:
```bash
make clean
```
- To clean properly:
```bash
make fclean
```
- To rebuild the project:
```bash
make re
```

## How to access to everything
Here is how to access to everything:
- Wordpress webapp (in your browser):
```bash
ade-rese.42.fr
```
or for the admin version:
```bash
ade-rese.42.fr/wp-admin
```
- Adminer webapp (in your browser):
```bash
http://localhost:8080/adminer.php
```
- FTP server (in filezilla):
```bash
host: ade-rese.42.fr
user: ade-rese
password: 123456789 for exemple
port:
```
- Static webpage (in your browser):
```bash
localhost:4243
```
- Grafana:
```bash
http://localhost:3000/login
```
## Credential
If you want to check or change some credential go to the .env file that you have build in srcs

## Check services
To check that everything is running you can do this command:
```bash
docker ps
```
and in addition you can also check:
```bash
docker logs mariadb
docker logs wordpress
docker logs nginx
docker logs redis
docker logs adminer
docker logs ftp
docker logs static_webpage
docker logs grafana
```
