# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ADDITIONAL_BUILD_PROPERTIES += \
    ro.ssos.version=$(SSOS_BASE_VERSION)-$(SSOS_BUILD_TYPE)-$(BUILD_DATE)-$(BUILD_TIME) \
    ro.ssos.base.version=$(SSOS_BASE_VERSION) \
    ro.ssos.codename=$(SSOS_CODENAME) \
    ro.ssos.build.version=$(SSOS_PLATFORM_VERSION) \
    ro.mod.version=$(BUILD_ID)-$(BUILD_DATE)-$(SSOS_BASE_VERSION) \
    ro.ssos.fingerprint=$(ROM_FINGERPRINT) \
    ro.ssos.buildtype=$(SSOS_BUILD_TYPE) \
    ro.ssos.display.version=$(DISPLAY_SSOS_SETTINGS) \
    ro.ssos.device=$(TARGET_PRODUCT_SHORT) \
    ro.ssos.platform.version=$(PLATFORM_SSOS_VERSION) \
    ro.ssos.build_date=$(BUILD_DATE)
