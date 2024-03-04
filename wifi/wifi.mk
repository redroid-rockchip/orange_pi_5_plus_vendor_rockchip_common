WIFI_KO_FILES := $(shell find $(TOPDIR)$(PRODUCT_KERNEL_PATH)/drivers/net/wireless/rockchip_wlan -name "*.ko" -type f)

BOARD_VENDOR_KERNEL_MODULES += \
	$(foreach file, $(WIFI_KO_FILES), $(file))

WifiFirmwareFile := $(shell ls $(CUR_PATH)/wifi/firmware)
PRODUCT_COPY_FILES += \
        $(foreach file, $(WifiFirmwareFile), $(CUR_PATH)/wifi/firmware/$(file):$(TARGET_COPY_OUT_VENDOR)/etc/firmware/$(file))
RtlWifiFirmwareFile := $(shell ls $(CUR_PATH)/wifi/rtlwifi)
PRODUCT_COPY_FILES += \
        $(foreach file, $(RtlWifiFirmwareFile), $(CUR_PATH)/wifi/rtlwifi/$(file):$(TARGET_COPY_OUT_VENDOR)/etc/firmware/rtlwifi/$(file))
