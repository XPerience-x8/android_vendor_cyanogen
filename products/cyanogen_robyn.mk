# Inherit device configuration for robyn.
$(call inherit-product, device/semc/robyn/device_robyn.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full_no_themes.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_robyn
PRODUCT_BRAND := SEMC
PRODUCT_DEVICE := robyn
PRODUCT_MODEL := E10i
PRODUCT_MANUFACTURER := Sony Ericsson
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE=E10i PRODUCT_NAME=E10i BUILD_ID=3.0.1.A.0.145 BUILD_FINGERPRINT=SEMC/LT15i_1247-1073/LT15i:2.3.3/3.0.1.A.0.145/bn_p:user/release-keys PRIVATE_BUILD_DESC="LT15i-user 2.3.3 3.0.1.A.0.145 bn_P test-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/device/semc/robyn/prelink-linux-arm-robyn.map

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Add LDPI assets, in addition to MDPI
PRODUCT_LOCALES += ldpi mdpi

# Extra overlay for LDPI
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/ldpi

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

# Add the Torch app
PRODUCT_PACKAGES += Torch

# Add the Cyanogenmod Wallpapers
PRODUCT_PACKAGES += CMWallpapers

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=MiniCM7-2.0.7

#
# Set ro.modversion
#
#ifdef CYANOGEN_NIGHTLY
#    PRODUCT_PROPERTY_OVERRIDES += \
#        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-x10Mini
#else
#    ifdef CYANOGEN_RELEASE
#        PRODUCT_PROPERTY_OVERRIDES += \
#            ro.modversion=CyanogenMod-7.0.2-X10Mini
#    else
#        PRODUCT_PROPERTY_OVERRIDES += \
#            ro.modversion=CyanogenMod-7.0.2-X10Mini-000
#    endif
#endif

#
# Copy bootanimation
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/ldpi/media/bootanimation.zip:system/media/bootanimation.zip

