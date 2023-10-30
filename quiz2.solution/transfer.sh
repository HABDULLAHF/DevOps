#! /usr/bin/bash

# Creating tarball
filename=u2020123.tar.gz
tar -czvf $filename *.sh

# copying files to the server
scp $filename u2020123@127.0.0.1:$filename
