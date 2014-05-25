docker-pentaho
=====================

### Install docker

(https://www.docker.io/gettingstarted/#h_installation)[https://www.docker.io/gettingstarted/#h_installation]


### Remove all containers

<pre>
sudo docker rm $(sudo docker ps -a -q)
</pre>

### Remove all images
<pre>
sudo docker rmi $(sudo docker images -q)
</pre>
