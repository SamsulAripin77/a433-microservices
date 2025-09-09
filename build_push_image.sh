#!/bin/bash

#membuild image app
docker build -t item-app:v1 .

#mengubah nama image
docker tag item-app:v1 samsularipin77/item-app:v1

#melihat list image
docker images

#login to docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u samsularipin77 --password-stdin
# docker login -u samsularipin77 --password $GHCR_TOKEN ghcr.io #ini ga pake password tapi pake token

#push image ke docker hub
docker push samsularipin77/item-app:v11

exit 0