#!/bin/bash

BOARD_ZIP_DIR=$1
DENSITY=$2

VENDOR_SYSTEM=$3
BOARD_RELEASE=$4

function custom_arm64
{
	cpuAbi=$(grep "ro.product.cpu.abi=" $VENDOR_SYSTEM/build.prop | awk -F\= '{print $2}' | head -1)
	if [ "x$VENDOR_SYSTEM" != "x" ] && [ "x$cpuAbi" = "xarm64-v8a" ]; then
		if [ "x$BOARD_RELEASE" != "x" ] ; then
			ARM_64="$(dirname $BOARD_RELEASE)/arm64"
			if [ -d "$ARM_64" ]; then
				for f in $(ls $ARM_64); do
					if [ "$f" == "SYSTEM" ]; then
						cp -rf $ARM_64/$f/* $BOARD_ZIP_DIR/system
					else
						cp -rf $ARM_64/$f $BOARD_ZIP_DIR
					fi
				done
			fi
		fi
	fi
}

function custom_oneplusRes()
{
    if [ -f $SYSTEM_DIR/priv-app/oneplus-framework-res/oneplus-framework-res.apk ]; then
        mv $SYSTEM_DIR/priv-app/oneplus-framework-res/oneplus-framework-res.apk 
        
	fi
}
custom_arm64
custom_oneplusRes
