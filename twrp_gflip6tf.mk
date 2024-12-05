#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/tcl/gflip6tf

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/tcl/gflip6tf/gflip6tf-vendor.mk)

# Inherit from Gflip6_TF device
$(call inherit-product, device/tcl/gflip6tf/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := gflip6tf
PRODUCT_NAME := twrp_gflip6tf
PRODUCT_BRAND := tcl
PRODUCT_MODEL := gflip6tf
PRODUCT_MANUFACTURER := tcl

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb
