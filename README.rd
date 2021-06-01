aRmbian - Statistics Reports on SBC's

Minimal system for running and displaying statistics reports written in Rmarkdown
Built upon Armbian,  an Ubuntu compatible system running on ARM based SBC's


R packages

- tidyverse
- GADMTools
- multcomp
- officer
- flextable

Installation

Download the ubuntu image for your SBC from Armbian official site and burn it to a SD 

Follow user creation wizard  

run armbian-config  set up a wifi connection, then change System timezone and Keyboard layout according to your requirements ( avoid changing locale settings)

run aRmbian installation script as root

chmod +x aRmbian.sh
./aRmbian.sh

Reboot and login as new user and run Report script

sudo chmod +x Report.sh
./Report.sh

