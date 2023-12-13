#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from S40 device
$(call inherit-product, device/doogee/S40/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_DEVICE := S40
PRODUCT_NAME := omni_S40
PRODUCT_BRAND := DOOGEE
PRODUCT_MODEL := S40
PRODUCT_MANUFACTURER := doogee

PRODUCT_GMS_CLIENTID_BASE := android-doogee

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S40_RU-user 9 P00610 1562833591 release-keys"

BUILD_FINGERPRINT := DOOGEE/S40_RU/S40:9/P00610/1562833591:user/release-keys
