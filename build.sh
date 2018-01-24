#!/usr/bin/env bash
set -ex

IMAGE="newsnowio/psql"

docker build -t ${IMAGE}:1.0 .
docker push ${IMAGE}
