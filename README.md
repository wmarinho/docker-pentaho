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

<pre>
sudo docker pull wmarinho/pentaho
</pre>

* Release: 5.0.1-stable

<pre>
sudo docker pull wmarinho/pentaho:5.0.1-stable
</pre>

* Running instance

<pre>
sudo docker run -p 8080:8080 -d wmarinho/pentaho
</pre>


* Running multiples instances

<pre>
sudo docker run -p 8081:8080 -d wmarinho/pentaho
sudo docker run -p 8082:8080 -d wmarinho/pentaho
</pre>

* Accessing instances

[http://localhost:8080](http://localhost:8080)

[http://localhost:8081](http://localhost:8081)

[http://localhost:8082](http://localhost:8082)
