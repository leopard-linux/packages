#!/bin/sh

cd /
mkdir -p boot cdrom dev etc home media mnt opt proc root run srv sys tmp usr var

mkdir -p /usr/bin
mkdir -p /usr/lib
mkdir -p /usr/lib32
mkdir -p /usr/lib64
mkdir -p /usr/libx32
mkdir -p /usr/sbin

ln -s /usr/bin /bin
ln -s /usr/lib32 /lib32
ln -s /usr/lib64 /lib64
ln -s /usr/libx32 /libx32
ln -s /usr/sbin /sbin

chmod 0700 /root
chmod 0776 /tmp
