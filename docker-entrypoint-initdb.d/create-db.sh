#!/bin/bash
set -e
echo "Creating DB"
psql <<- EOSQL
    CREATE USER docker_secret;
    CREATE DATABASE docker_secrets;
    CREATE DATABASE hcheck;
    GRANT ALL PRIVILEGES ON DATABASE docker_secrets TO docker_secret;
    GRANT ALL PRIVILEGES ON DATABASE hcheck TO docker_secret;
EOSQL
echo "Done Creating DB"
