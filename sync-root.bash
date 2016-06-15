#!/bin/bash

DIR_ROOT='/mnt/root'

service slim stop

mount -o remount,rw $DIR_ROOT

time rsync --delete-before -aAXHOv \
	--exclude=*\.cache* \
	--exclude=/dev/ \
	--exclude=\/etc\/fstab \
	--exclude=\/etc\/mtab \
	--exclude=/media/ \
	--exclude=/mnt/ \
	--exclude=/proc/ \
	--exclude=/run/ \
	--exclude=/sys/ \
	--exclude=/tmp/ \
	--exclude=/var/cache/ \
	--exclude=/var/log/ \
	--exclude=/var/tmp/ \
	--exclude=\.xsession-errors \
	/ $DIR_ROOT/.

echo 'Running `sync` to flush pending writes...'
time sync

mount -o remount,ro $DIR_ROOT

echo 'Done.'

#rsync -naAXHOv --exclude=dev/ --exclude=proc/ --exclude=sys/ --exclude=media/ --exclude=mnt/ --exclude=run/ --exclude=/tmp --exclude=var/cache --exclude=*\.cache* /. . > /tmp/rsync.log
