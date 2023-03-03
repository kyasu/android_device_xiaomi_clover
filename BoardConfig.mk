#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 Xioami-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#

include device/xiaomi/sdm660-common/BoardConfigCommon.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Device Path
DEVICE_PATH := device/xiaomi/clover

SOONG_CONFIG_NAMESPACES += CLOVER_BACKLIGHT
SOONG_CONFIG_CLOVER_BACKLIGHT := USE_LCD_BACKLIGHT_INTERFACE_ONLY
SOONG_CONFIG_CLOVER_BACKLIGHT_USE_LCD_BACKLIGHT_INTERFACE_ONLY := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/touchscreen/enable_dt2w"

# Density
TARGET_SCREEN_DENSITY := 240

# Kernel
TARGET_KERNEL_CONFIG := clover_defconfig

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# WLAN MAC
WLAN_MAC_SYMLINK := true

