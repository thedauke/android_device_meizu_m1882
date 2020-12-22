#
# Copyright (C) by me :)
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from m1882 device
$(call inherit-product, device/meizu/m1882/device.mk)

# Inherit some common RR stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)



PRODUCT_NAME := rr_m1882
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1882
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := 16th

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="16th" \
    PRODUCT_NAME="meizu_16th_CN" \
    PRIVATE_BUILD_DESC="meizu_16th_CN-user 8.1.0 OPM1.171019.026 1572332128 release-keys"

BUILD_FINGERPRINT := Meizu/meizu_16th_CN/16th:8.1.0/OPM1.171019.026/1572332128:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=400

PRODUCT_PRODUCT_PROPERTIES += \
    fod.dimming.min=40 \
    fod.dimming.max=255

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#GAPPS
TARGET_GAPPS_ARCH := arm64

# RR Stuffs
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_FOD := true
EXTRA_FOD_ANIMATIONS := true
BUILD_RR_WALLPAPERS:= true

# Exclude AudioFX
TARGET_EXCLUDES_AUDIOFX := true
