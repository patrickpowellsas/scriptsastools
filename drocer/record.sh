#!/bin/bash

configDir="$HOME/info_script"

echo "#!/bin/bash" > $configDir/cmd_rec.sh

recScript="$configDir/cmd_rec.sh"

sudo chmod +x $recScript

while true
do
	read -p '> ' cmdStr
	if [ $cmdStr == "drocer" ];
	then
		break
	fi
	$cmdStr
	echo $cmdStr >> $recScript
done

echo "record ready"

