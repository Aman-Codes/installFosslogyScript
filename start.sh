#! /bin/bash

# run 
# chmod +x start.sh
# to make this file executable

# Start apache and postgresql
sudo service apache2 start
sudo service postgresql start

# move inside the fossology folder
cd ..
cd fossology

# Start Fossology
sudo systemctl enable --now fossology
sudo /etc/init.d/fossology start