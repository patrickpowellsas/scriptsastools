#!/bin/bash

### Get system info: log directories, 

LOG_DIR="/opt/sas/M8SWO/config/Lev1/Grid"

mv $LOG_DIR/Logs/* $LOG_DIR/log_backup/

GRID_VER="base"

read -p "Grid version (1 - LSF, 2 - SWO, 3/[enter] - Base SAS): " GRID_VER

case "$GRID_VER" in
	#case 1
	"base") continue;;
	
	#non-grid
	"3") continue;;
	
	#case 2
	"1") GRID_VER="LSF";;
	
	#case 3
	"2") GRID_VER="SWO";;
esac

# enable increased log level

read -p "Desired log level (.json file for multiple service levels): " LOG_LEVEL

LOG_LEVEL=$(echo $LOG_LEVEL| cut -d'.' -f 4)

echo $LOG_LEVEL


# Restart services
