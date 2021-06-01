#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
rm ~/.xinitrc
# only one html supported, for multiple html files in folder write full filename of desire report
echo -e "#!/bin/sh \nxset -dpms  \nxset s off \nxset s noblank \nchromium-browser /media/Reports/*.html --no-sandbox --kiosk --fullscreen" >> ~/.xinitrc
chmod a+x  ~/.xinitrc
echo  [=== Rmarkdown Script ===]
# only one Rmd supported, for multiple Rmd files in folder write full filename of desire report
Rscript -e "rmarkdown::render('/media/Reports/*.Rmd')" 

echo  [=== Print Report  ===]
startx
