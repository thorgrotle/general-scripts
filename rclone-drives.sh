#!/usr/bin/bash
# This script logs one the google drive and onedrive. Make sure to configure rclone and create drivefolders in ~/
# $ rclone config    # setup googledrive with selection 18 , setup onedrive with selection 31.
# $ mkdir ~/onedrive ~/onedrive-keroit ~/googledrive
# 

killall rclone
sleep 18
rclone --vfs-cache-mode writes mount "onedrive": ~/onedrive &
rclone --vfs-cache-mode writes mount "onedrive-keroit": ~/onedrive-keroit &
rclone --vfs-cache-mode writes mount "googledrive": ~/googledrive &

# Create shortcut and make it executable
# nano /home/thor/.local/share/applications/Rclone-drives.desktop
# [Desktop Entry]
#Name=Rclone-drives
#Comment=Access to cloud drives
#Exec=/home/thor/bin/rclone-drives.sh
#Icon=org.gnome.DiskUtility
#Terminal=false
#Type=Application
#Categories=Utility;
