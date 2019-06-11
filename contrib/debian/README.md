
Debian
====================
This directory contains files used to package super8d/super8-qt
for Debian-based Linux systems. If you compile super8d/super8-qt yourself, there are some useful files here.

## super8: URI support ##


super8-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install super8-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your super8-qt binary to `/usr/bin`
and the `../../share/pixmaps/super8128.png` to `/usr/share/pixmaps`

super8-qt.protocol (KDE)

