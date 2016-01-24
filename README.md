# symfony-docker-boilerplate

The boilerplate for creating new Symfony based projects (development and testing purposes only)

## Installation

### Initialize project

Clone this project:  

```sh
git clone git@github.com:viktorsteinwand/symfony-docker-boilerplate.git
cd symfony-docker-boilerplate
```

### Add `symfony-boilerplate.local` to the hosts file

Update the local host file (`/etc/hosts` on Linux/OS X) by adding the following line:

```
192.168.99.100 symfony-boilerplate.local
```

*Note: Assumed that the IP 192.168.99.100 is the docker host IP*

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
- docker-compose  
- php  

**Note: This project supports Linux or Docker-Machine on OS X only.**

### Links

- [Docker Toolbox on OS X](http://docs.docker.com/engine/installation/mac/)

## Optional

### Enable NFS on OS X Docker Machine with docker-machine-nfs

Using NFS instead of VirtualBoxShares can be setup by using the [docker-machine-nfs](https://github.com/adlogix/docker-machine-nfs) available on [github](https://github.com/adlogix/docker-machine-nfs).
