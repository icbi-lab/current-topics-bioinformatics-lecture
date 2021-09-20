#!/bin/bash

WORKDIR=$(readlink -f $(dirname $0))
mkdir -p deploy
for f in $WORKDIR/**/*.Rmd; do
	Rscript -e "rmarkdown::render('$f', output_format='all', output_dir='$WORKDIR/deploy')"
done
