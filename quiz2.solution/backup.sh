#! /usr/bin/bash

sudo tar -czvf /home/devopsuser/devopsdir_tart_$(date '+%Y%m%d%H%M%S').gz /devopsdir/

# Setting cronjob
# */10 * * * * root /path/to/your/script/file
# You can simply copy and paste the command as well at the place of path
# As you only have one command in your bash script which but without sudo
# because we are already setting up this cron under the scope of root user
# */20 * * * * root tar -czvf /home/devopsuser/devopsdir_tart_$(date '+%Y%m%d%H%M%S').gz /devopsdir/
