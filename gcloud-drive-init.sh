#!/bin/bash
set -x

DATA_FOLDER=$1
DEVICE=$2

sudo mkdir /$DATA_FOLDER
sudo mke2fs -F -F -O ^has_journal -t ext4 -b 4096 -E lazy_itable_init=0 /dev/sdb
# sudo mke2fs -F -F -O ^has_journal -t ext4 -b 4096 -E lazy_itable_init=0 $DEVICE
sudo mount $DEVICE /$DATA_FOLDER
sudo chmod a+w /$DATA_FOLDER
