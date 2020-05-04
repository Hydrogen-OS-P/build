# prebuilt_64.mk

BOARD_PREBUILT += \
	lib64/vendor.oneplus.faceunlock.hal@1.0.so

ifeq ($(strip $(PRODUCE_INTERNATIONAL_ROM)),true)
BOARD_PREBUILT += \

else
BOARD_PREBUILT += \
    

endif
