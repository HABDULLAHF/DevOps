#!/bin/bash

# Task i: Find files modified within the last 3 months
echo "Files modified within the last 3 months:"
find ~ -type f -mtime -90

# Task ii: Find files larger than 100KB
echo "Files larger than 100KB:"
find ~ -type f -size +100k

# Task iii: Find files whose names have the digit ‘3’ in it
echo "Files with '3' in the name:"
find ~ -type f -name '*3*'

# Task iv: Find and delete files larger than 100KB and older than 2 months
echo "Deleting files larger than 100KB and older than 2 months:"
#find ~ -type f -size +100k -mtime +60 -delete

# Task v: Find and delete files created within the last 10 days
echo "Deleting files created within the last 10 days:"
#find ~ -type f -ctime -10 -delete

# Task vi: Find and delete files smaller than 1KB and older than 4 months
echo "Deleting files smaller than 1KB and older than 4 months:"
#find ~ -type f -size -1k -mtime +120 -delete