# Kernel
ifeq ($(LOCAL_KERNEL),)
include vendor/ssos/config/BoardConfigKernel.mk
PRODUCT_SOONG_NAMESPACES += \
    vendor/ssos/build/soong/generator
endif

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/ssos/config/BoardConfigQcom.mk
endif

# Soong
include vendor/ssos/config/BoardConfigSoong.mk
