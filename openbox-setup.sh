#!/bin/bash

# Openbox with "necessary" applications
# Set up to run as a normal user with sudo

sudo pacman -Syu chromium geany-plugins gnome-calculator gnome-icon-theme-extras gnome-keyring gvfs libgnomeui lightdm-gtk3-greeter lxpolkit lxterminal menumaker obconf obmenu openbox openbox-themes pcmanfm polkit python2-xdg xterm
# NOTE the Qt alternatives: kdesdk-kate kdebase-konsole lightdm-kde-greeter pcmanfm-qt
# actually take up more resources than: geany lxterminal lightdm-gtk-greeter pcmanfm
# and all of the actual GTK packages required were already installed after installing only openbox and chromium
# 
# In other words, just test/use what I like the best.
# 
# On top of that it seems that gnome-keyring is needed for wifi which pulls in GTK3 stuff
# So I've just given up on even trying to make an all/mostly Qt system for now.

sudo systemctl enable lightdm

mmaker -vfs Console OpenBox3
echo :::
echo Run :: mmaker -vfs Console Openbox3 :: for other users, or copy .config/openbox/menu.xml for them.

# enable compositing and a logout menu
# echo Please see https://wiki.archlinux.org/index.php/Compton
# echo and https://wiki.archlinux.org/index.php/Oblogout
# yaourt -Syua compton oblogout

# Install all of the extras for chromium
# yaourt -Syua chromium-pepper-flash chromium-libpdf google-talkplugin

# additional applications plus some useful optional dependencies
# pacman -S alsa-plugins dosfstools ffmpeg gvfs-smb libdvdcss lxappearance-obconf lxrandr ntfs-3g speex steam vlc

#echo :::
#echo Please see https://wiki.archlinux.org/index.php/Openbox#GTK.2B_2 if having problems with GTK themes.
echo :::
echo You might want to reboot now to enjoy your fresh Openbox GUI.