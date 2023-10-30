#! /usr/bin/bash

# Creating a user
username="devopsuser"
echo -e "Creating user named: {$username} with password: {$username}..."

pass=$(perl -e 'print crypt($ARGV[0], "password")' $username)
useradd -m -p "$pass" "$username"

# Alternate script to create a user
<<-COMMENT
useradd -m $username
echo "$username:$username" | chpasswd
COMMENT

echo -e "User {$username} with pass: {$username} created successfully...\n"


# Creating group
group="devopsgroup"
echo -e "Creating group named: {$group}\n"
groupadd $group
echo -e "Group {$group} successfully created\n"

# Adding user to the group
echo -e "Adding {$username} to group: {$group}...\n"
usermod -a -G $group $username


# Showing the association of user with the newly created group
echo -e "{$username} successfully added to the group. See details below\n"
cat /etc/group | grep $group

