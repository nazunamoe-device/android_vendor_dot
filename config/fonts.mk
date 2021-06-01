# Fonts

# Get google fonts from external
$(call inherit-product-if-exists, external/google-fonts/arbutus-slab/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/arvo/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/barlow/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/lato/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/rubik/fonts.mk)
$(call inherit-product-if-exists, external/google-fonts/zilla-slab/fonts.mk)

# Karla family
PRODUCT_PACKAGES += \
    Karla-Regular.ttf

# Fraunces family
PRODUCT_PACKAGES += \
    Fraunces-SemiBold.ttf
    
# Other fonts
PRODUCT_PACKAGES += \
    LGSmartGothic.ttf \
    Rosemary-Regular.ttf \
    SamsungOne.ttf \
    Shamshung.ttf \
    SimpleDay.ttf    

# BigShouldersText family
PRODUCT_PACKAGES += \
    BigShouldersText-Bold.ttf \
    BigShouldersText-ExtraBold.ttf

LOCAL_PATH := vendor/dot/fonts
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ttf,$(TARGET_COPY_OUT_PRODUCT)/fonts)
PRODUCT_COPY_FILES += \
    vendor/dot/fonts/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# Customization overlays
PRODUCT_PACKAGES += \
    FontKaiOverlay \
    FontVictorOverlay
