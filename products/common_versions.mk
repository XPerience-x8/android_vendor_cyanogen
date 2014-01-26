PRODUCT_VERSION_MAJOR = 1
PRODUCT_VERSION_MINOR = 9


ifdef CYANOGEN_NIGHTLY
    CMVERSION := XPerience-$(shell date +%Y%m%d)-NIGHTLY-$(CM_BUILD)
else
    ifdef CYANOGEN_RELEASE
        CMVERSION := XPerience-$(PRODUCT_VERSION_MAJOR)$(PRODUCT_VERSION_MINOR)-$(CM_BUILD)
    else
        CMVERSION := XPerience-$(PRODUCT_VERSION_MAJOR)$(PRODUCT_VERSION_MINOR)-$(CM_BUILD)
    endif
endif
build_XPE := eng_klozz-$(shell date +%Y%m%d)-$(CMVERSION)
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=$(build_XPE)


PRODUCT_PROPERTY_OVERRIDES += \
    ro.xpe.dev=Klozz-jesus \
    ro.build.version=$(PRODUCT_VERSION_MAJOR)$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CMVERSION) \
    persist.sys.themeId = JellyBean \
       persist.sys.themePackageName = com.klozz.theme.JellyBean

