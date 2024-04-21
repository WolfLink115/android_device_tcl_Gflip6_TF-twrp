#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/gflip6tf

# Common init scripts
PRODUCT_PACKAGES += \
    init.mt6739.rc

# Android FSTAB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/fstab.mt6739:/system/etc/fstab.mt6739

# Input
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/gpio_keys.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/matrix-keypad.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/qwerty.kl \
    $(DEVICE_PATH)/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl
