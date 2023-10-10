#!/bin/bash

#ce script est a mettre dans le fichier crontab
#le chemin pour acceder au fichier csv
chemin_csv=/home/ilyes/shell-exe/Jobs/Job9

#le fichier csv
fichier_csv=Shell_Userlist.csv

#commande qui s'execute lorsqu une modification du fichier a lieu
commande="/home/ilyes/shell-exe/Jobs/Job9/accesrights.sh"

#surveiller les modifs
inotifywait -e modify "$chemin_csv/$fichier_csv" && $commande
