#!/bin/bash

docker build --rm -tq yandex-tank .
id=$(docker run -d yandex-tank)
docker wait $id
docker cp $id:/test ./results
docker rm $id
