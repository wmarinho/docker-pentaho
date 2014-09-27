#!/bin/bash

USER=pgadmin
DB=postgres
#PASS=$(pwgen -s -1 16)

PASS=pgadmin.

git clone https://github.com/wmarinho/docker-postgresql.git
cd docker-postgresql; git checkout 9.3; docker build -t wmarinho/postgresql:9.3 .; cd ..; rm -rf docker-postgresql;

PSQL_CID=$(docker run -d -p 5432:5432 wmarinho/postgresql:9.3)
#PSQL_CID=$(docker run -d --name="postgresql" \
#             -p 5432:5432 \
#             -e USER="${USER}" \
#             -e DB="${DB}" \
#             -e PASS="${PASS}" \
#             paintedfox/postgresql)

PSQL_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' ${PSQL_CID})
nc -zv ${PSQL_IP} 5432

while [ "$?" -ne "0" ]
do
 sleep 5
 echo "Checking PostgreSQL service ..." 
 nc -zv ${PSQL_IP} 5432
done

PENTAHO_CID=$(docker run  -d  -p 8080:8080 -e INSTALL_PLUGIN=marketplace,cdf,cda,cde,cgg,sparkl,saiku -e  RDS_PORT=5432  -e RDS_DB_NAME=${DB}  -e RDS_USERNAME=${USER}  -e RDS_HOSTNAME=${PSQL_IP}  -e RDS_PASSWORD=${PASS} -e DB_VENDOR=postgres wmarinho/pentaho-biserver)


echo "Removing container ..."
#docker stop ${PSQL_CID} ${PENTAHO_CID} 
#docker rm ${PSQL_CID} ${PENTAHO_CID} 



#sleep 30 
#docker run  --name=pentaho01 -d  -p 8080:8080 -e INSTALL_PLUGIN=marketplace,cdf,cda,cde,cgg,sparkl,saiku -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=$1  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho
#sleep 360 
#docker run  --name=pentaho02 -d  -p 8081:8080 -e INSTALL_PLUGIN=marketplace,cdf,cda,cde,cgg,sparkl,saiku  -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=$1  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho
