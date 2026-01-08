# Prerequisites
You should have install on you computer:
- docker
- docker-compose
- make
Next you should create your .env file in srcs and should be something like this:
```bash
DOMAIN_NAME=ade-rese.42.fr

# MYSQL SETUP
MYSQL_USER=ade-rese
MYSQL_PASSWORD=123456789
MYSQL_DATABASE=wordpress
MYSQL_ROOT_PASSWORD=123456789

# WORDPRESS SETUP
WORDPRESS_VERSION=latest
WORDPRESS_TITLE=inception
WORDPRESS_ADMIN_USER=GOD
WORDPRESS_ADMIN_PASSWORD=123456789
WORDPRESS_ADMIN_EMAIL=god@complex.com
WORDPRESS_USER=ade-rese
WORDPRESS_PASSWORD=123456789
WORDPRESS_EMAIL=ade-rese@42paris.fr

# FTP SETUP
FTP_USER=ade-rese
FTP_PASSWORD=123456789
```

## Build and launch
You can use as well the makefile or docker-compose with the docker-compose.yml:
- To build:
```bash
make
```
or
```bash
docker-compose up --build
```
- To clean up:
```bash
make clean
```
or
```bash
docker compose down
docker-compose down -v
```
or
```bash
make fclean
```
or
```bash
docker system prune -af
```

## Usefull commands for dockers
As well use the makefile or docker-compose:
- To see images:
```bash
make images
```
or
```bash
docker images
```
- To see networks:
 ```bash
make networks
```
or
```bash
docker network ls
```
- To check volumes:
```bash
docker volume inspect <volume_name>
```

## Data
All the data is stored the docker volumes to ensure the persistence (check docker-compose.yml for the path)
