#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/hw/camera.sdm660.so)
            for LIBCAMERA_SDM660_SHIM in $(grep -L "libcamera_sdm660_shim.so" "${2}"); do
                "${PATCHELF}" --add-needed "libcamera_sdm660_shim.so" "$LIBCAMERA_SDM660_SHIM"
            done
            ;;
        vendor/lib/libFaceGrade.so | vendor/lib/libXMFD_AgeGender.so | vendor/lib/lib_lowlight.so | vendor/lib/libarcsoft_beautyshot.so | vendor/lib/libchromaflash.so | vendor/lib/libdualcameraddm.so | vendor/lib/libmmcamera_hdr_gb_lib.so | vendor/lib/liboptizoom.so | vendor/lib/libseemore.so | vendor/lib/libtrueportrait.so | vendor/lib/libts_detected_face_hal.so | vendor/lib/libts_face_beautify_hal.so | vendor/lib/libubifocus.so | vendor/lib/libvideobokeh.so | vendor/lib64/libchromaflash.so | vendor/lib64/libdualcameraddm.so | vendor/lib64/liboptizoom.so | vendor/lib64/libseemore.so | vendor/lib64/libts_detected_face_hal.so | vendor/lib64/libubifocus.so | vendor/lib64/libvideobokeh.so)
            "${PATCHELF}" --replace-needed "libstdc++.so" "libstdc++_vendor.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=clover
export DEVICE_COMMON=sdm660-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
