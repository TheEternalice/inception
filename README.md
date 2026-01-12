*This project has been created as part of the 42 curriculum by ade-rese.*

# Inception

## Description

The **Inception** project aims to deepen understanding of **Docker** and **containerization** by setting up a complete web services infrastructure, orchestrated using **Docker Compose**.

The project involves deploying several interconnected Docker containers, each with a specific responsibility, while complying with strict security, configuration, and isolation rules.  
The infrastructure is based on:
- An **NGINX** server with SSL that depends on wordpress and mariadb
- A **WordPress** with **PHP-FPM** which depends on mariadb
- A **MariaDB** database
- Persistent volumes
- A dedicated Docker network

for the bonus part we add to the infrastructure:
- **Redis** to manage the cache of our wordpress
- **Adminer** to manage different types of databases without needing multiple tools
- An **FTP server (File Transfer Protocol)** that point on wordpress volumes
- A **Static WebPage**
- And a service of my choice here I chose **Grafana**

The main objective is to understand how to design, configure, and maintain a Docker-based architecture without using pre-built images.

---

## Instructions

### Prerequisites

- Docker
- Docker Compose

### Installation

1. Clone :
```bash
git clone git@vogsphere.42paris.fr:vogsphere/intra-uuid-4bb2940d-4bce-4ba8-969b-282bc9b21f24-7121473-ade-rese inception
cd inception
```

2. Create a .env file in the srcs repository :
```bash
touch ./inception/srcs/.env
```
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

3. Launch it :
```bash
make
```
or
```bash
docker-compose up --build
```
Clean up :
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

Docker & Design Choices
Using Docker

Docker allows each service to be isolated in an independent container, facilitating:
- Environment reproducibility
- Maintenance
- Security
- Deployment
Each service has its own Dockerfile, ensuring total control over the image built.

Virtual Machines vs Docker
| Virtual Machines         | Docker                              |
| ------------------------ | ----------------------------------- |
| Emulates a complete OS   | Shares the host kernel              |
| More resource-intensive  | Lightweight and fast                |
| Slow startup             | Near-instantaneous startup          |
| Strong isolation         | Sufficient isolation for most cases |

Environment Variables vs Secrets
| Environment Variables                 | Secrets                    |
| ------------------------------------- | -------------------------- |
| Easy to use                           | More secure                |
| Readable by containers                | Encrypted                  |
| Sufficient for an educational project | Recommended for production |

Host Network vs Docker Network
| Host Network           | Docker Network                          |
| ---------------------- | --------------------------------------- |
| No network isolation   | Service isolation                       |
| Risk of port conflicts | Internal DNS resolution                 |
|                        | Secure communication between containers |

Bind Mounts vs Docker Volumes
| Bind Mounts                              | Docker Volumes                 |
| ---------------------------------------- | ------------------------------ |
| Depend on the host's directory structure | Managed by Docker              |
| Less portable                            | Safer                          |
|                                          | Independent of the host system |

## Ressources

https://www.docker.com/resources/what-container/

https://docs.docker.com/get-started/docker-overview/

https://docs.docker.com/reference/dockerfile

https://docs.docker.com/build/building/best-practices/

https://docs.docker.com/reference/cli/docker/container/run/

https://docs.docker.com/compose/gettingstarted/

https://docs.docker.com/engine/storage/

https://docs.docker.com/engine/storage/volumes/

https://docs.docker.com/engine/storage/bind-mounts/

https://docs.docker.com/engine/network/

https://docs.docker.com/engine/network/drivers/bridge/

https://docs.docker.com/engine/network/drivers/host/

https://docs.docker.com/engine/swarm/secrets/

https://nginx.org/en/docs/

https://docs.nginx.com/nginx/admin-guide/web-server/reverse-proxy/

https://docs.nginx.com/nginx/admin-guide/security-controls/terminating-ssl-http/

https://nginx.org/en/docs/http/configuring_https_servers.html

https://nginx.org/en/docs/http/ngx_http_core_module.html

https://ssl-config.mozilla.org/#server=nginx&version=1.22.0&config=intermediate&openssl=3.0.0&guideline=5.7

https://docs.openssl.org/master/

https://www.ssllabs.com/ssltest/

https://wordpress.org/documentation/

https://developer.wordpress.org/advanced-administration/

https://www.php.net/manual/en/install.fpm.php

https://mariadb.org/documentation/

https://mariadb.com/docs/release-notes/community-server/about/compatibility-and-differences/mariadb-vs-mysql-compatibility

https://redis.io/docs/latest/

https://wordpress.org/plugins/redis-cache/

https://www.adminer.org/en/

https://www.rfc-editor.org/rfc/rfc959

https://security.appspot.com/vsftpd.html

https://grafana.com/docs/

https://grafana.com/docs/grafana/latest/introduction/

https://grafana.com/docs/grafana/latest/fundamentals/getting-started/

https://www.ipv6.rs/tutorial/Alpine_Linux_Latest/Grafana/

## AI
AI was used to fix some typo and to check the readme.
