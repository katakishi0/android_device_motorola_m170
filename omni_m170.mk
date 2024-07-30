#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from m170 device
$(call inherit-product, device/motorola/m170/device.mk)

PRODUCT_DEVICE := m170
PRODUCT_NAME := omni_m170
PRODUCT_BRAND := motorola
PRODUCT_MODEL := SabahLite
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola-rvo3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m170-user 13 TLA33.105-287 795 release-keys"

BUILD_FINGERPRINT := motorola/m170/m170:13/TLA33.105-287/795:user/release-keys
