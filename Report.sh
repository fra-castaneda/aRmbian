#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
cd /media
git clone https://github.com/fra-castaneda/COVID-Chile
touch ~/.xsession
# Change to report name
echo -e "#!/bin/sh \nxset -dpms  \nxset s off \nxset s noblank \nchromium-browser /media/COVID-Chile.html --no-sandbox --kiosk --fullscreen" >> ~/.xsession
chmod a+x  ~/.xsession
echo  [=== Rmarkdown Script ===]
# Change to report name
Rscript -e "rmarkdown::render('/media/COVID-Chile.Rmd')" 

echo  [=== Print Report  ===]
startx
