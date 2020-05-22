# prebuilt.mk

BOARD_PREBUILT_DIRS += \
    app \
    customizecenter \
    fonts \
    media/audio \
    priv-app

BOARD_PREBUILT += \
    etc/fonts.xml \
    etc/NOTICE.html.gz \
ifeq ($(strip $(PRODUCE_INTERNATIONAL_ROM)),true)
BOARD_PREBUILT += \

else
BOARD_PREBUILT += \

endif
