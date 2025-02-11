#!/bin/bash

tag=$(cat cellbender/__init__.py | sed -e 's?__version__ = ??' | sed "s/^'\(.*\)'$/\1/")

docker build \
    -t dfernand/cellbender:${tag} \
    -f docker/Dockerfile \
    .
