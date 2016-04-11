# symfony-docker-boilerplate

The boilerplate for creating new Symfony3 based projects (development and testing purposes only).

## Used docker images

- [nginx:1.9](https://hub.docker.com/_/nginx/)  
- [mysql:5.7](https://hub.docker.com/_/mysql/)  
- [viktorsteinwand/php:7.0-fpm-symfony-dev](https://hub.docker.com/r/viktorsteinwand/php/)  
- [alpine:latest](https://hub.docker.com/_/alpine/)  

## Installation

### Initialize project

Clone this project and run composer update:  

```sh
git clone git@github.com:viktorsteinwand/symfony-docker-boilerplate.git
cd symfony-docker-boilerplate/application
composer update --ignore-platform-reqs
cd ..
```

### Update parameters.yml file

Open or create new `application/app/config/parameters.yml` file with text editor and update it with following information:

```yml
parameters:
    database_host: databasehost
    database_port: null
    database_name: symfony
    database_user: sfuser
    database_password: pass
    mailer_transport: smtp
    mailer_host: 127.0.0.1
    mailer_user: null
    mailer_password: null
    secret: 80a52bfc1983639343ede68ef100b725a99be609
```

### Add `symfony-boilerplate.local` to the hosts file

Update the local host file (`/etc/hosts` on Linux/OS X) by adding the following line:

```
192.168.99.100 symfony-boilerplate.local
```

*Note: Assumed that the IP 192.168.99.100 is the docker host IP*

### Enable NFS on OS X Docker Machine with docker-machine-nfs (OS X only)

Using NFS instead of VirtualBoxShares can be setup by using the [docker-machine-nfs](https://github.com/adlogix/docker-machine-nfs) available on [github](https://github.com/adlogix/docker-machine-nfs).

Enable NFS on OS X docker-machine:

```sh
docker-machine-nfs <vm-name>
```

### Start the application

```sh
docker-compose -p sf3 up -d
```

Create the defined database:  

```sh
bin/console doctrine:schema:create
```

The application is now available at [http://symfony-boilerplate.local](http://symfony-boilerplate.local).  

### Managing the application

#### Start the application

```sh
docker-compose -p sf3 up -d
```

#### Stopping the application

```sh
docker-compose -p sf3 stop
```

#### Removing the application

```sh
docker-compose -p sf3 rm -vf
```

#### Stop and remove all container of the application

```sh
docker-compose -p sf3 down
```

#### Remove database, logs and caches volumes

#### Stopping the application

```sh
docker volume rm $(docker volume ls | grep sf3)
```

The application is now available at [http://symfony-boilerplate.local](http://symfony-boilerplate.local).  

## Requirements

Tools listed below should be installed to start this application:  

- composer  
- docker >=1.10.0  
- docker-machine (OS X only)  
- docker-machine-nfs (OS X only)  
- docker-compose >=1.6.0  
- php >=7.0  

See also [docker-compose requirements](https://docs.docker.com/compose/compose-file/#version-2).

**Note: This project supports Linux or Docker-Machine on OS X only.**

### Links

- [Docker Toolbox on OS X](http://docs.docker.com/engine/installation/mac/)
- [docker-machine-nfs](https://github.com/adlogix/docker-machine-nfs)
