#! /bin/bash

# run 
# chmod +x FILENAME.sh
# to make this file executable

sudo service apache2 start
sudo service postgresql start
cd ..
cd fossology
sudo utils/fo-cleanold
sudo utils/fo-installdeps
make
sudo make install
sudo /usr/local/lib/fossology/fo-postinstall
sudo /usr/local/etc/fossology/mods-enabled/scheduler/agent/fo_scheduler -t
sudo systemctl enable --now fossology
sudo /etc/init.d/fossology start