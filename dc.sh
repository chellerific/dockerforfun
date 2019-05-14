#!/bin/bash
cd ./src/server/vindskydd_api
./build.sh

cd ../../../

docker-compose up --detach