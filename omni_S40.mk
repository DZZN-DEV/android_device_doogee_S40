#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_DEVICE := S40
PRODUCT_NAME := omni_S40
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := $(PRODUCT_DEVICE)
PRODUCT_MANUFACTURER := $(shell echo $(PRODUCT_BRAND) | tr '[:upper:]' '[:lower:]')
PRODUCT_GMS_CLIENTID_BASE := android-doogee

$(call inherit-product, device/doogee/$(PRODUCT_DEVICE)/device.mk)

BUILD_FINGERPRINT := DOOGEE/S40/S40:9/P00610/20231213/User/release-key
