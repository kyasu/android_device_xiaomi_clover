#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/window_extensions.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from clover device
$(call inherit-product, device/xiaomi/clover/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := clover
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_clover
PRODUCT_MODEL := MI PAD 4
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="clover-user 8.1.0 OPM1.171019.019 V10.3.2.0.ODJCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/clover/clover:8.1.0/OPM1.171019.019/V10.3.2.0.ODJCNXM:user/release-keys
