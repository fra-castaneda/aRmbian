#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
touch ~/.xsession
# Change to report name
echo -e "#!/bin/sh \nxset -dpms  \nxset s off \nxset s noblank \nchromium-browser /media/Reports/COVID-Chile.html --no-sandbox --kiosk --fullscreen" >> ~/.xsession
chmod a+x  ~/.xsession
echo  [=== Rmarkdown Script ===]
# Change to report name
Rscript -e "rmarkdown::render('/media/Reports/COVID-Chile.Rmd')" 

echo  [=== Print Report  ===]
startx
