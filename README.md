*This project has been created as part of the 42 curriculum by <ade-rese>.*

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
WORDPRESS_ADMIN_USER=HEY
WORDPRESS_ADMIN_PASSWORD=123456789
WORDPRESS_ADMIN_EMAIL=hey@you.com
WORDPRESS_USER=ade-rese
WORDPRESS_PASSWORD=123456789
WORDPRESS_EMAIL=ade-rese@42paris.fr
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
