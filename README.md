# Description
These scripts provide for support for a RAM drive based ROOT FS on Ubuntu and 
other Linux distributions. It is based on the script found on Ubuntu Forums
(http://ubuntuforums.org/showthread.php?t=853701&page=3).

This fixes some issues, like 1777 permissions on RW root, though the script
still replaces some mount options on the modified 'fstab'.

# Requirements
* AuFS (currently untested)
* OverlayFS (Kernel 4.4.0 compatible)

# 'sync-root' Script
This allows you to update the root FS on Ubuntu. You also shut down the X 
server before hand, so replace 'slim' with your display manager.
I use this on low endurance flash drives, so I don't copy '.cache' directories
or some '/var' directories that store runtime generated data.
It is recommened to reboot after you're done, since for some reason the root FS
is not able to be mounted RO (most of the time).
