#! /usr/bin/bash

#Generating keypairs
keypairname="devopsuser_keypair"
ssh-keygen -N "" -f $keypairname

echo "Moving keypairs to the user home directory..."
sudo cp $keypairname /home/devopsuser/ 

echo "Moving public key to the .ssh folder of the user home directory..."
sudo mkdir -p /home/devopsuser/.ssh
sudo mv $keypairname.pub /home/devopsuser/.ssh/authorized_keys

echo -e "\nSuccessfully moved key pairs to user home directory, see details\n"
sudo ls -l /home/devopsuser/ /home/devopsuser/.ssh/


# Disabling password authentication
echo -e "Disabling password authentication...\n"
sudo grep -q "^[^#]*PasswordAuthentication" /etc/ssh/sshd_config && sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]yes/c\PasswordAuthentication no" /etc/ssh/sshd_config || sudo echo "PasswordAuthentication no" >> /etc/ssh/sshd_config

#sudo service ssh restart

echo "Password authentication disabed, now you can only login to this system using key pairs only ..."


# Setting up ssh detail in config
echo -e "Following ssh details are set in config.."

cat << SHOW 
Hoset server
        Hostname 127.0.0.1
        IdentityFile $(pwd)/$keypairname
        port 25
        user devopsuser
SHOW

cat << SSH >> /home/$USER/.ssh/config
Host server
	Hostname 127.0.0.1
	IdentityFile $(pwd)/$keypairname
	port 25
	user devopsuser
SSH

# SSH into server using newly created credentials
echo "Making SSH connectiong to the server via new user"

ssh server << COMMANDS
	mkdir test
	echo "I am doing the taske" >> test/filecreatedinnoninteractivemode.txt
COMMANDS

