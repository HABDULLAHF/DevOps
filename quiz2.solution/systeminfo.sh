#! /usr/bin/bash

#Displaying the system info

echo -e "Displaying the system info ...\n"

echo "Kernel name is: $(uname -s)"

echo "Kernel release is: $(uname -r)"

echo "Processor type of the machine is: $(uname -p)"

echo "Installed operating system is: $(uname -s)"

#Showing the details of my favorite editor
echo -e "\nShowing the details of my favorite editor ...\n"

whereis nano
