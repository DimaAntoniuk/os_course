#!/bin/bash

git clone https://github.com/dimaantoniuk/os_course

cd os_course
docker volume create db-data
docker-compose up

docker logs --follow --timestamps os_course_lab6-app_1
