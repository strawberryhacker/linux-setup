## Summary

This is what I did to install Linux. Please be sure to make a backup of the data first. These steps works for me... thats all I know

- Install the latest version of Ubuntu server
- Install Rufus
- Open Rufus and click the 'select' boot image option. Choose the Ubuntu file .iso
- Choose the drive to install it to (I used a USB stick)
- Make sure the formatting option is set to GPT and click start. This will flash Ubuntu to the device
- Hit Win key and type 'run' 
- A small box should appear, write diskmgmt.msc and hit enter
- Identify the disk which should be used for Ubuntu, right click and hit shrink
- Specify how much you want to shrink, and choose exFAT formatting
- Reboot the PC into the BIOS. I did this by pressing F2 while starting
- There should be some select boot mode in the bios - choose the device with Ubuntu installed (look at the size)

## Installing Ubuntu server

- Just continue the installation setting up the network. I use ethernet so I did no changes
- When the installer asks where to install it, choose the custom install option (if not it will overwrite EVERYTHING)
- Now we will select the exFAT partition we made in Windows (check the size). 
- Select it, hit edit, choose ext4 file system, and mount in in the '/' directory. Hit enter after.
- Now we will continue the installation, press continue
- Just follow the rest of the guide. Remember the username and password

## Installing DWM

- You should have a black terminal right now
- Run the following commands
- sudo apt update
- sudo apt upgrade
- sudo apt install xorg stterm suckless-tools build-essential libx11-dev libxinerama-dev libxft-dev libwebkit2-4.0-dev git
- sudo reboot
- You should now have a minimal desktop
- Log in and hit ctrl-alt-t
- Run the following commands
- sudo apt remove gdm3
- sudo reboot
- Log in to the black terminal again
- Do these steps
- cd ~
- git clone https://github.com/strawberryhacker/linux-setup.git
- cd linux-setup
- cp .xinitrc ..
- cd dwm
- sudo make clean install
- cd ../st
- sudo make clean install
- sudo reboot
- When you have logged in, type startx

## DWM shortcuts

, is left and . is right and my mod key is left-alt

- shift + mod + enter opens a terminal
- mod + . or mod + , moves focus between screens
- shit + mod + . or shift + mod + , moves the current window in the current screen to either the left or right screen
- mod + p opens application picker
- mod + enter switches the main window
- mod + b hides DWM bar
- mod + h and mod + l adjusts the screen split

## Maybe install this

- sudo apt install firefox (after: mod + p: write firefox)
- sudo apt install ffmpeg
- sudo apt install snap
- sudo snap install code (this installs vs code)

My vs code configuration file is in the github repo
