#!/bin/bash

#################################################################################################
# Add the new rules in the sepolicy.                                                            #
# The script will inject the rules into the sepolicy, better ensure the device security.        #
# If you are familiar with the sepolicy rules, you can customize them in your device.           #
#################################################################################################

PRJ_ROOT=`pwd`
SEPOLICY_INJECT=$PORT_ROOT/build/tools/sepolicy-inject/sepolicy-inject-v2
SEPOLICY=$1
    echo "do nothing"



