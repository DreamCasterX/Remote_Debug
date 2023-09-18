#!/usr/bin/env bash


# CREATOR: mike.lu@hp.com
# CHANGE DATE: 2023/9/18


<<COMMENT
[Note]
1. Please provide the login user name and password.
2. Please provide the ssh session string, (e.g., 'ssh xxxxxxx.tmate.io').
3. You can close the Terminal window after saving the ssh session string.
4. The ssh session string will be renewed whenever you reboot the system or re-run this script.
COMMENT


# Run as a program
gnome-terminal --maximize -x bash -c 'nslookup "hp.com"; if [ $? != 0 ]; then echo "No Internet connection!" && sleep 5 && exit 0; fi; gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type "nothing"; gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type "nothing"; [[ -f /usr/bin/ssh ]] || sudo apt update && sudo apt install ssh -y; [[ -f /usr/bin/tmate ]] || sudo apt update && sudo apt install tmate -y; [[ -f /usr/bin/sosreport ]] || sudo apt update && sudo apt install sosreport -y; ss -tpun | grep -w tmate; if [ $? != 0 ]; then tmate; else killall tmate && tmate; fi'


