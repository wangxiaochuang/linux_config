#!/bin/bash

echo "get avaliable ip from remote"
#wget --ca-certificate=ca-bundle.crt -c https://raw.githubusercontent.com/w365/crpip_gvs_323/master/proxy.user.ini
#wget --ca-certificate=ca-bundle.crt -c http://git.oschina.net/cfuup/crpip_gvs_323/raw/master/proxy.user.ini
rm ../proxy.user.ini_backup
mv ../proxy.user.ini  ../proxy.user.ini_backup
mv proxy.user.ini ../proxy.user.ini
echo "update done"
