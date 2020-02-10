#
# Copyright (C) 2020 ShapeShiftOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
BUILD_DATE := $(shell date +%Y%m%d)
TARGET_PRODUCT_SHORT := $(subst ssos_,,$(SSOS_BUILDTYPE))

SSOS_BUILDTYPE ?= Community
SSOS_BUILD_VERSION := $(PLATFORM_VERSION)
SSOS_VERSION := $(SSOS_BUILD_VERSION)-$(SSOS_BUILDTYPE)-Alpha-$(SSOS_BUILD)-$(BUILD_DATE)
ROM_FINGERPRINT := ShapeShiftOS/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%H%M)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.ssos.build.version=$(SSOS_BUILD_VERSION) \
  ro.ssos.build.date=$(BUILD_DATE) \
  ro.ssos.buildtype=$(SSOS_BUILDTYPE) \
  ro.ssos.fingerprint=$(ROM_FINGERPRINT) \
  ro.ssos.version=$(SSOS_VERSION) \
  ro.ssos.device=$(SSOS_BUILD) \
  ro.modversion=$(SSOS_VERSION)

ifneq ($(OVERRIDE_OTA_CHANNEL),)
    PRODUCT_PROPERTY_OVERRIDES += \
        ssos.updater.uri=$(OVERRIDE_OTA_CHANNEL)
endif
