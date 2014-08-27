#!/bin/bash

docker run --name=postgres -d -p 5432:5432 wmarinho/postgresql:9.3

docker run  --name=pentaho01 -d  -p 8080:8080  -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=localhost  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho

docker run  --name=pentaho02 -d  -p 8081:8080  -e  RDS_PORT=5432  -e RDS_DB_NAME=postgres  -e RDS_USERNAME=pgadmin  -e RDS_HOSTNAME=localhost  -e RDS_PASSWORD=pgadmin. -e DB_VENDOR=postgres wmarinho/pentaho
