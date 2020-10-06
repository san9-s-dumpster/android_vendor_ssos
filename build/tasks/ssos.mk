SSOS_TARGET_PACKAGE := $(PRODUCT_OUT)/ShapeShiftOS-$(SSOS_VERSION).zip

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

.PHONY: ssos bacon
ssos: otapackage
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(SSOS_TARGET_PACKAGE)
	$(hide) $(MD5) $(SSOS_TARGET_PACKAGE) | cut -d ' ' -f1 > $(SSOS_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}ShapeShiftOS ${txtrst}";
	@echo -e ""
	@echo -e "zip: "$(SSOS_TARGET_PACKAGE)
	@echo -e "md5: `cat $(SSOS_TARGET_PACKAGE).md5sum | cut -d ' ' -f 1`"
	@echo -e "size:`ls -lah $(SSOS_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

bacon: ssos
