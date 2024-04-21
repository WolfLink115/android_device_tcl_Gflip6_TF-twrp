#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/tcl/gflip6tf/gflip6-vendor.mk)

# Inherit from Gflip6_TF device
$(call inherit-product, device/tcl/gflip6tf/device.mk)

PRODUCT_DEVICE := gflip6tf
PRODUCT_NAME := omni_gflip6tf
PRODUCT_BRAND := tcl
PRODUCT_MODEL := gflip6tf
PRODUCT_MANUFACTURER := tcl

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_gflip6tf-user 11 RP1A.200720.011 KEE7 release-keys"

BUILD_FINGERPRINT := TCL/T408DL/gflip6tf:11/RP1A.200720.011/KEE7:user/release-keys
