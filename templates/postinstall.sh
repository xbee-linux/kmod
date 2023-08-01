#!/bin/bash
set -e

for target in depmod insmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod {{ .xbee.out }}/usr/sbin/$target
done

ln -sfv kmod {{ .xbee.out }}/usr/bin/lsmod