#!/bin/bash

configDir="~/info_script"

echo "proc setinit; run;" > ~/info_script/setinit.sas
echo "%put Site: &syssite;" >> ~/info_script/setinit.sas
echo "%put Release:  &sysver  (&sysvlong);" >> ~/info_script/setinit.sas
echo "%put System: &sysscp (&sysscpl);" >> ~/info_script/setinit.sas

read -p 'SAS install directory: ' install_dir

$install_dir/SASHome/SASFoundation/9.4/sas -sysin ~/info_script/setinit.sas -log ~/info_script/setinit.log

clear

cat ~/info_script/setinit.log 2>&1 | tee -a ~/info_script/sasinfo.txt

echo "" 2>&1 | tee -a ~/info_script/sasinfo.txt

echo -e "\n---- LSID ----\n" 2>&1 | tee -a ~/info_script/sasinfo.txt
lsid
echo -e "\n---- JID ----\n" 2>&1 | tee -a ~/info_script/sasinfo.txt
jid
echo -e "\n---- LSHOSTS ----\n" 2>&1 | tee -a ~/info_script/sasinfo.txt
lshosts
echo -e "\n---- BHOSTS ----\n" 2>&1 | tee -a ~/info_script/sasinfo.txt
bhosts

