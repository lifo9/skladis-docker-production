#!/bin/bash

# removes exited containers
docker rm $(docker ps -a -f status=exited -q)

cd ../app/skladis_backend
docker build --build-arg RAILS_ENV=development -t skladis-backend .
