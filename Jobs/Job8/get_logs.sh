connections=$(grep "New seat seat0." /var/log/auth.log | wc -l)
fichier=number_connection-`date +%d-%m-%Y-%H:%M`
 echo "$connections" > $fichier
tar -cvf /home/ilyes/bash/shell-exe/Job8/$fichier.tar /home/ilyes/bash/shell-exe/Job8/$fichier
mv /home/ilyes/bash/shell-exe/Job8/$fichier.tar /home/ilyes/bash/shell-exe/Job8/backup
rm $fichier
