#!/bin/bash

IMG_NAME=severalnines:ccxdocsbuilder

echo
echo "Building Docker and CCX docs"
docker build --rm -t $IMG_NAME .
container_id=$(docker create $IMG_NAME)

echo
echo "Exporting the site"
docker cp "$container_id:/data/ccx-docs/ccxdocs-site.tar.gz" .
docker rm $container_id
echo "DONE"
