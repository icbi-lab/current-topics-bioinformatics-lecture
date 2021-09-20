#!/bin/bash

mkdir -p deploy
for f in $(dirname $0)/**/*.Rmd; do
	Rscript -e "rmarkdown::render('$f', output_format='all', output_dir='./deploy')"
done
