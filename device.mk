#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/gflip6tf

# Input
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/gpio_keys.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/matrix-keypad.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 31
