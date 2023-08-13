#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ice device
$(call inherit-product, device/xiaomi/ice/device.mk)

PRODUCT_DEVICE := ice
PRODUCT_NAME := omni_ice
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := ice
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ice-user 12 SP1A.210812.016 V13.0.17.0.SGMMIXM release-keys"

BUILD_FINGERPRINT := Redmi/ice_global/ice:12/SP1A.210812.016/V13.0.17.0.SGMMIXM:user/release-keys
