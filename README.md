# Description
These scripts provide for support for a RAM drive based ROOT FS on Ubuntu and 
other Linux distributions. It is based on the script found on Ubuntu Forums
(http://ubuntuforums.org/showthread.php?t=853701).

This fixes some issues with the original script, like 1777 permissions on the
RW root and supports newer versions of OverlayFS, required for Ubuntu 16.04.

# Requirements
* AuFS (currently untested)
* OverlayFS (Kernel 4.4.0 compatible)

# Usage
Please see the script header. There are changes on some of the parameters used
by the script.

# 'sync-root' Script
This allows you to update the root FS on Ubuntu. You should also shut down the
X server before hand, so replace 'slim' with your display manager.
I use this on low endurance flash drives, so I don't copy '.cache' directories
or some '/var' directories that store runtime generated data.
It is recommened to reboot after you're done, since for some reason the root FS
is not able to be mounted RO (most of the time). Have not bothered to check
why since I haven't had any kind of data corruption.
