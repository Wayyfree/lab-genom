#!/bin/bash

#This script automatically updates chosen repositories every 2 hours. this script only works if SSH agent correctly manages our our keyes. Remember to automatically turn it on in .bashrc every time you log in

#repositories to automatically
script="/home/STUDENTI/stefano.semeraro5/lab-genom/Script/"

#navigate to the repository. || is a logical OR: if bash cannot navigate to "$script" then it exits the script
cd "$script" || exit

#add all changes of the folder
git add .

#create the commit
git commit -m "Automated commit of scripts on $(date '+%Y-%m-%d %H:%M:%S')"

#push commit
git push origin main
