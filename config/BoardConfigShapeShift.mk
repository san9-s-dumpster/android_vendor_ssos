# Kernel
include vendor/ssos/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/ssos/config/BoardConfigQcom.mk
endif

# Soong
include vendor/ssos/config/BoardConfigSoong.mk
