# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.audio.fluence.audiorec=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.stats.test=5 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.preview.ubwc=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.vds.allow_hwc=0

# DPI
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.display.lcd_density=320

# Lockscreen rotation (requested by ibooth2004@XDA (https://forum.xda-developers.com/showpost.php?p=82157253&postcount=545)
PRODUCT_PROPERTY_OVERRIDES += \
    lockscreen.rot_override=true

# Single SIM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.multisim.config=ssss

# Ultra Sound
PRODUCT_PROPERTY_OVERRIDES += \
    audio.chk.cal.us=0
