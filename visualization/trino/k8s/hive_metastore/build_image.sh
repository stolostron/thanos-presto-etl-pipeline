#!/bin/bash

set -e

REPONAME=anxhela21
TAG=hivemetastore

docker build -t $TAG .

# Tag and push to the public docker repository.
docker tag $TAG $REPONAME/$TAG:full-install.0
docker push quay.io/$REPONAME/$TAG:full-install.0


# Update configmaps
kubectl create configmap metastore-cfg --dry-run --from-file=metastore-site.xml --from-file=core-site.xml -o yaml
