#!/bin/sh
#description    :This script will allow to upload files to a nextcloud server via webdav.
#usage          :sh upload.sh file(s)
#notes          :Install duck.sh to use this script.
#author         :rafe95
#=========================================================================

printf 'Username: '
read -r username

password=`systemd-ask-password "Password:"`

for file in "$@"
do
    duck --username "$username" --password "$password" --upload https://nube.uclv.cu/remote.php/webdav/ "$file"
done

