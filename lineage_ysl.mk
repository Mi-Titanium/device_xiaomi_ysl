#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from ysl device
$(call inherit-product, device/xiaomi/ysl/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Flags
TARGET_BOOT_ANIMATION_RES := 720

# Kernel
TARGET_KERNEL_VERSION := 4.19

# Axion Flags
AXION_MAINTAINER := RenzAlt
AXION_PROCESSOR := Titanium_64
AXION_MODERN_KERNEL := true
AXION_CAMERA_REAR_INFO := 12,5
AXION_CAMERA_FRONT_INFO := 16
WITH_GMS := true

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := lineage_ysl
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ysl-user 9 PKQ1.181203.001 V12.0.2.0.PEFMIXM release-keys" \
    BuildFingerprint=google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
