#!/bin/bash
echo [=== aRmbian - Statistics Reports ===]
echo
echo [=== Configuration ===]
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "00 05 * * * root /root/Update.sh" >> mycron
#install new cron file
crontab mycron
rm mycron
cd /media
git clone https://github.com/fra-castaneda/COVID-Chile
rm /etc/conky/conky.conf
echo -e '-- vim: ts=4 sw=4 noet ai cindent syntax=lua \nconky.config = { \n    alignment = "top_right", \n    background = false, \n    border_width = 1, \n    cpu_avg_samples = 2, \n	default_color = "white", \n    default_outline_color = "white", \n    default_shade_color = "white", \n    draw_borders = false, \n    draw_graph_borders = true, \n    draw_outline = false, \n    draw_shades = false, \n    use_xft = true, \n    font = "DejaVu Sans Mono:size=10", \n    gap_x = 5, \n    gap_y = 50, \n    minimum_height = 300, \n	maximum_width = 210, \n    net_avg_samples = 2, \n    out_to_console = false, \n    out_to_stderr = false, \n    extra_newline = false, \n    own_window = true, \n    own_window_class = "Conky", \n    own_window_type = "override", \n    stippled_borders = 0, \n    update_interval = 1.0, \n    uppercase = false, \n    use_spacer = "none", \n    show_graph_scale = false, \n    double_buffer = yes , \n    show_graph_range = false \n} \n  \nconky.text = [[ \n${scroll 16 $nodename - $sysname $kernel on $machine | } \n$hr \n${color grey}Uptime:$color $uptime \n${color grey}Freq (GHz):$color $freq_g \n${color grey}RAM:$color $mem/$memmax - $memperc% ${membar 4} \n${color grey}Swap:$color $swap/$swapmax - $swapperc% ${swapbar 4} \n${color grey}CPU:$color $cpu% ${cpubar 4} \n${color grey}Processes:$color $processes  \n${color grey}Running:$color $running_processes \n$hr \n${addr wlan0}  \n„${wireless_essid wlan0}” ${wireless_link_qual wlan0}% \n$hr \n${color grey}Name            CPU%  \n${color lightgrey} ${top name 1} ${top cpu 1} \n${color lightgrey} ${top name 2} ${top cpu 2} \n${color grey}Name            RAM% \n${color lightgrey} ${top name 1} ${top mem 1} \n${color lightgrey} ${top name 2} ${top mem 2} \n]] '>> /etc/conky/conky.conf
rm ~/.xsession
# Change to report name
echo -e "#!/bin/sh \nxset -dpms \nxset s off \nxset s noblank \nfeh --bg-center /media/aRmbian/aRmbian.png \nxclock -d -update 1 -geom 215x30-0+10 & \nconky & \nxterm /media/aRmbian/Update.sh -geom 35x20-0+400 & \nchromium-browser /media/COVID-Chile/COVID-Chile.html --no-sandbox --kiosk " >> ~/.xsession
chmod a+x  ~/.xsession
echo [=== Print Report ===]
startx

