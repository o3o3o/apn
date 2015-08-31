#!/bin/bash
#ruby bin/apn  start  --redis_db=13 --foreground --cert_file /tmp/iossslkey/develop.pem
#./bin/apn  start  --redis_db=13 --foreground --cert_file /tmp/iossslkey/develop.pem
./bin/apn  run --redis_db=13  --cert_file /tmp/iossslkey/develop.pem

#./bin/apn  start  --redis_db=13 --foreground --cert_file /home/iossslkey/develop.pem
#ruby bin/apn  start  --environment='production' --redis_db=13 --foreground --cert_file /tmp/iossslkey/develop.pem
