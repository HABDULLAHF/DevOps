#!/bin/bash

# Navigate to the directory where the compressed bundle is located
cd /path/to/directory/containing/bundle

# Decompress the archive
gunzip files_archive.tar.gz

# Extract the files from the archive
tar -xvf files_archive.tar

# Display information about the extracted files
ls -l file*.txt small_file*.txt medium_file*.txt large_file*.txt
