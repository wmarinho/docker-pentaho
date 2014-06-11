Pentaho - Rapid Deployment with Docker 
=====================

##Pentaho
[Pentaho](http://www.pentaho.com/) addresses the barriers that block your organization's ability to get value from all your data.  The platform simplifies preparing and blending any data and includes a spectrum of tools to easily analyze, visualize, explore, report and predict. Open, embeddable and extensible, Pentaho is architected to ensure that each member of your team -- from developers to business users -- can easily translate data into value. 

##Docker
[Docker](http://www.docker.com/) is an open platform for developers and sysadmins to build, ship, and run distributed applications. Consisting of Docker Engine, a portable, lightweight runtime and packaging tool, and Docker Hub, a cloud service for sharing applications and automating workflows, Docker enables apps to be quickly assembled from components and eliminates the friction between development, QA, and production environments. As a result, IT can ship faster and run the same app, unchanged, on laptops, data center VMs, and any cloud.

## Install Docker

[https://docs.docker.com/installation/](https://docs.docker.com/installation/)

##Pull repository
* Release: TRUNK.SNAPSHOT

`sudo docker pull wmarinho/pentaho`

* Release: 5.0.1-stable

`sudo docker pull wmarinho/pentaho:5.0.1-stable`

* Listing images on the host

`sudo docker images`

* Running container as daemon

`$ sudo docker run  -p 8080:8080 -d wmarinho/pentaho
58daea398cae983a79578ac22a01f87a5d0a84d08b72d473a6c70d72ad82505b`

* Running multiples containers as daemon

`
sudo docker run -p 8081:8080 -d wmarinho/pentaho
sudo docker run -p 8082:8080 -d wmarinho/pentaho
`

* Make sure your container is running

`$ sudo docker ps
CONTAINER ID        IMAGE                     COMMAND                CREATED             STATUS              PORTS                            NAMES
65f8010043f8        wmarinho/pentaho:latest   /usr/bin/supervisord   3 seconds ago       Up 2 seconds        0.0.0.0:8081->8080/tcp, 22/tcp   silly_torvalds
58daea398cae        wmarinho/pentaho:latest   /usr/bin/supervisord   2 minutes ago       Up 2 minutes        0.0.0.0:8080->8080/tcp, 22/tcp   jolly_mccarthy`

* Stop containers

`sudo docker stop <CONTAINER_ID>`

* Start containers

`sudo docker start <CONTAINER_ID>`


* Running an interactive container

`sudo docker run -i -t wmarinho/pentaho /bin/bash`

Inside our container we can configure Pentaho and add custom package or plugins

* Now we have a container with the change we want to make

`sudo docker commit -m="Added Sparkl plugin" <CONTAINER_ID> wmarinho/pentaho:latest-sparkl`

* We can then look at our new `wmarinho/pentaho:latest-sparkl` image using the `docker images` command

* To use our new image to create a container we can then:

`sudo docker run -p 8080:8080 -d wmarinho/pentaho:latest-sparkl`

* Accessing instances

[http://localhost:8080](http://localhost:8080)

[http://localhost:8081](http://localhost:8081)

[http://localhost:8082](http://localhost:8082)



* 
