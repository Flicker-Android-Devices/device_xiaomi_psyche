#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOs stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Environment Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# Inherit from psyche device
$(call inherit-product, device/xiaomi/psyche/device.mk)

PRODUCT_NAME := aosp_psyche
PRODUCT_DEVICE := psyche
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 12X

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Xiaomi/psyche/psyche:13/TKQ1.221114.001/V816.0.9.0.TLDCNXM:user/release-keys
