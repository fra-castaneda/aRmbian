#!/bin/sh 
echo [=== Rmarkdown Script ===]  
Rscript -e  "rmarkdown::render('/media/COVID-Chile/COVID-Chile.Rmd')"
