#!/usr/bin/env bash


# CREATOR: mike.lu@hp.com
# CHANGE DATE: 2023/9/15


# [Note]
# Please provide the login password for the current user
# Please provide the ssh session string, (e.g., 'ssh xxxxxxx.tmate.io')
# You can close the terminal after providing the ssh session string
# If you reboot the system, the ssh session string will change


gnome-terminal --maximize -x bash -c 'nslookup "hp.com";if [ $? != 0 ]; then echo "No Internet connection!" && sleep 5 && exit 0; fi; [[ -f /usr/bin/ssh ]] || sudo apt update && sudo apt install ssh -y; [[ -f /usr/bin/tmate ]] || sudo apt update && sudo apt install tmate -y; [[ -f /usr/bin/sosreport ]] || sudo apt update && sudo apt install sosreport -y; ss -tpun | grep -w tmate; if [ $? != 0 ]; then tmate; fi'



