#!/usr/bin/bash

ENGINE=${ENGINE:-docker}

$ENGINE run -v $(pwd):/src -t docker.io/rocker/verse:latest src/render_all.sh
