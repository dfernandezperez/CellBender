#!/bin/bash

tag=$(cat cellbender/VERSION.txt)
release=v${tag}

docker build \
    -t dfernand/cellbender:${tag} \
    --build-arg GIT_SHA=${release} \
    -f docker/DockerfileGit \
    .
