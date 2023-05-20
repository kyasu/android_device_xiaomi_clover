#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2018-2021 The Xiaomi-SDM660 Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit the sdm660-common definitions
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

# Device Path
DEVICE_PATH := device/xiaomi/clover

# PRODUCT_SHIPPING_API_LEVEL indicates the first api level, device has been commercially launched on.
PRODUCT_SHIPPING_API_LEVEL := 27

# APEX
ENABLE_APEX := true

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Boot animation
TARGET_BOOTANIMATION_SIZE := 1080
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1200

# Device properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Folio
PRODUCT_PACKAGES += \
    folio_daemon

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/keylayout/sdm660-snd-card_Button_Jack.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/sdm660-snd-card_Button_Jack.kl

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.autofocus.xml

# Ramdisk
PRODUCT_PACKAGES += \
    init.device.rc \
    init.macaddress_setup.sh

# Screen density
PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Tablet features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml

# Tablet Specific
PRODUCT_PACKAGES += \
    androidx.window.extensions

# Task profiles
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/task_profiles/cgroups_26.json:$(TARGET_COPY_OUT_SYSTEM)/etc/task_profiles/cgroups_26.json \
    $(DEVICE_PATH)/configs/task_profiles/task_profiles_26.json:$(TARGET_COPY_OUT_SYSTEM)/etc/task_profiles/task_profiles_26.json \
    $(DEVICE_PATH)/configs/task_profiles/cgroups_26.json:$(TARGET_COPY_OUT_VENDOR)/etc/cgroups.json \
    $(DEVICE_PATH)/configs/task_profiles/task_profiles_26.json:$(TARGET_COPY_OUT_VENDOR)/etc/task_profiles.json

# Wifi
PRODUCT_PACKAGES += \
    CloverWifiOverlay

# Vendor files
$(call inherit-product, vendor/xiaomi/clover/clover-vendor.mk)
