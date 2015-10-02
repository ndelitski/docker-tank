#!/bin/bash

docker build --rm -tq yandex-tank .
#id=$(docker run -d yandex-tank)
#docker wait $id
#docker cp $id:/test ./results
#docker rm $id

docker rm tank
docker run -i -t  --name tank yandex-tank yandex-tank
rm -rf ./results/*
docker cp tank:/test ./results
