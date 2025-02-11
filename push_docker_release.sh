#!/bin/bash

tag=$(cat cellbender/VERSION.txt)
release=v${tag}

docker push dfernand/cellbender:${tag} 
