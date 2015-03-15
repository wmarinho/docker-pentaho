#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <db_hostname>"
    exit
fi
docker run --name=postgres -d -p 5432:5432 wmarinho/postgresql:9.3
sleep 30 
docker run  --name=pentaho01 -d  -p 8080:8080 -e INSTALL_PLUGIN=marketplace,cdf,cda,cde,cgg,sparkl,saiku -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=$1  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho
sleep 360 
docker run  --name=pentaho02 -d  -p 8081:8080 -e INSTALL_PLUGIN=marketplace,cdf,cda,cde,cgg,sparkl,saiku  -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=$1  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho
