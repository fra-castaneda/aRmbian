#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
cp conky.conf /etc/conky/conky.conf
cd /media
git clone https://github.com/fra-castaneda/COVID-Chile/COVID-Chile
rm ~/.xsession
# Change to report name
echo -e "#!/bin/sh \nxset -dpms  \nxset s off \nxset s noblank \nxsetroot -solid seagreen \nxclock -d -update -geom 210x30-5+10 & \nconky & \nchromium-browser /media/COVID-Chile.html --no-sandbox --kiosk --fullscreen" >> ~/.xsession
chmod a+x  ~/.xsession
echo  [=== Rmarkdown Script ===]
# Change to report name
Rscript -e "rmarkdown::render('/media/COVIS-Chile/COVID-Chile.Rmd')" 

echo  [=== Print Report  ===]
startx
