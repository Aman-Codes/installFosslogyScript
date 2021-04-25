#! /bin/bash

# run 
# chmod +x stop.sh
# to make this file executable

# Start apache and postgresql
sudo service apache2 stop
sudo service postgresql stop

# move inside the fossology folder
cd ..
cd fossology

# Start Fossology
sudo systemctl disable --now fossology
sudo /etc/init.d/fossology stop