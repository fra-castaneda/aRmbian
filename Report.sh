#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
cp conky.conf /etc/conky/conky.conf
cd /media
git clone https://github.com/fra-castaneda/COVID-Chile
rm ~/.xsession
# Change to report name
echo -e "#!/bin/sh \nxset -dpms \nxset s off \nxset s noblank \nxsetroot -solid seagreen \nxclock -d -update 1 -geom 215x30-0+10 & \nconky & \nxterm ~/Update.sh -geom 35x20-0+400 & \nxeyes -geom 215x200-0+670 & \nchromium-browser /media/COVID-Chile/COVID-Chile.html --no-sandbox --kiosk --fullscreen" >> ~/.xsession
chmod a+x  ~/.xsession
rm ~/Update.sh
echo -e"#!/bin/sh \n[=== Rmarkdown Script ===] \n# Change to report name \nRscript -e "rmarkdown::render('/media/COVID-Chile/COVID-Chile.Rmd')"" >> ~/Update.sh
chmod +x ~/Update.sh

