#!/bin/bash

TARGET_FILES_DIR=$1
SYSTEM_DIR=$TARGET_FILES_DIR/SYSTEM

function custom_oneplusRes()
{
    if [ -f $SYSTEM_DIR/priv-app/oneplus-framework-res/oneplus-framework-res.apk ]; then
        mv $SYSTEM_DIR/priv-app/oneplus-framework-res/oneplus-framework-res.apk 
    fi
}

custom_oneplusRes
