#! /usr/bin/bash

dir=/devopsdir
echo -e "Creating directory: $dir ... \n"
sudo mkdir -p $dir

echo -e "Creating devopsfilet.txt file ... \n"

sudo chown -R $USER:$USER $dir
echo "AoA, hello devops!" > $dir/devopsfile.txt

echo "setting permmisions as requested"
sudo chown -R devopsuser:devopsuser $dir
sudo chmod 644 $dir/devopsfile.txt
sudo chmod 744 $dir

echo -e "\nDone."
