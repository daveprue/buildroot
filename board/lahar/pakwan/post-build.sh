#!/bin/sh
# post-build.sh for Cubieboard3/Cubietruck

BOARD_DIR="$(dirname $0)"
MKIMAGE=$HOST_DIR/usr/bin/mkimage
BOOT_CMD=$BOARD_DIR/boot.cmd
BOOT_CMD_H=$BINARIES_DIR/boot.scr

# U-Boot script
$MKIMAGE -C none -A arm -T script -d $BOOT_CMD $BOOT_CMD_H
