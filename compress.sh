#!/bin/bash

# Navigate to the directory containing the files
cd /path/to/directory

# Create a tar archive of the files
tar -cvf files_archive.tar file*.txt small_file*.txt medium_file*.txt large_file*.txt

# Compress the tar archive using gzip
gzip files_archive.tar

# Display information about the compressed archive
ls -l files_archive.tar.gz