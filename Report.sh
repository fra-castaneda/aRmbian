#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
rm ~/.xinitrc
# Change to report name
echo -e "#!/bin/sh \nxset -dpms  \nxset s off \nxset s noblank \nchromium /media/Reports/*.html --no-sandbox --kiosk --fullscreen" >> ~/.xinitrc
chmod a+x  ~/.xinitrc
echo  [=== Rmarkdown Script ===]
# Change to report name
Rscript -e "rmarkdown::render('/media/Reports/*.Rmd')" 

echo  [=== Print Report  ===]
startx
