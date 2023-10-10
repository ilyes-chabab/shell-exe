#!/usr/bin/bash

fichier="/home/ilyes/shell-exe/Jobs/Job9/Shell_Userlist.csv"

while IFS=, read -r col1 col2 col3 col4 col5;
do
id=$col1
prenom=$col2
nom=$col3
mdp=$col4
role=$col5

sudo useradd -m -u "$id" "$prenom"
  echo "$prenom:$mdp" | chpasswd

if [ "$role"  == "Admin" ]; then
echo "1"
sudo usermod -aG sudo $prenom
fi

done<$fichier
