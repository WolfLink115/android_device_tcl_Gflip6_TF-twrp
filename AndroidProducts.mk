#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tcl/gflip6tf

PRODUCT_MAKEFILES := \
    $(DEVICE_PATH)/omni_gflip6tf.mk

COMMON_LUNCH_CHOICES := \
    omni_gflip6tf-user \
    omni_gflip6tf-userdebug \
    omni_gflip6tf-eng
