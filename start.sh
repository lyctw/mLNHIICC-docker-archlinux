#!/bin/sh
set -x

# Start RAC Plugin
cd /usr/local/HiPKILocalSignServerApp
cat ./start.sh
chmod a+x ./start.sh
./start.sh &

# Start plugin for health insurance card
ls -lah /usr/local/share/NHIICC/
sudo /usr/local/share/NHIICC/mLNHIICC &
#sudo /usr/local/share/NHIICC/mLNHIICC --CertFile /usr/local/share/NHIICC/cert/NHIServerCert.crt --PrivateFileKey /usr/local/share/NHIICC/cert/NHIServerCert.key &

tail -f /dev/null
