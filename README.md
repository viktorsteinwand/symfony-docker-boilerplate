# symfony-docker-boilerplate

The boilerplate for creating new Symfony3 based projects (development and testing purposes only).

Including:
- nginx
- PHP7
- Xdebug
- PHPUnit
- intl
- OPcache
- MySql

## Installation

### Initialize project

Clone this project:  

```sh
git clone git@github.com:viktorsteinwand/symfony-docker-boilerplate.git
cd symfony-docker-boilerplate/application
composer update
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
docker-compose up -d
```

The application is now available at [http://symfony-boilerplate.local](http://symfony-boilerplate.local).  

## Requirements

Tools listed below should be installed to start this application:  

- composer  
- docker  
- docker-machine (OS X only)  
- docker-machine-nfs (OS X only)  
- docker-compose  
- php  

**Note: This project supports Linux or Docker-Machine on OS X only.**

### Links

- [Docker Toolbox on OS X](http://docs.docker.com/engine/installation/mac/)
- [docker-machine-nfs](https://github.com/adlogix/docker-machine-nfs)
