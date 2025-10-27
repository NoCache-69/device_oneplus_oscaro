#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from oscaro device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# LunarisAOSP Flags
LUNARIS_BUILD_TYPE := OFFICIAL
WITH_GMS := true
TARGET_SUPPORTS_GOOGLE_DIALER := false
TARGET_SUPPORTS_GOOGLE_FILES := false
TARGET_INCLUDE_PHOTOS := false
TARGET_OPTIMIZED_DEXOPT := true
TARGET_DEFAULT_PIXEL_LAUNCHER := false

# Define CPU Set
LUNARIS_CPU_SMALL_CORES := 0,1,2,3,4,5
LUNARIS_CPU_BIG_CORES := 6,7
LUNARIS_ALL_CORES := 0-7
LUNARIS_CPU_BG := 0-3
LUNARIS_CPU_FG := 0-7
LUNARIS_CPU_LIMIT_BG := 0-1
LUNARIS_CPU_LIMIT_UI := 0-3
LUNARIS_CPU_DISPLAY := 0-5

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_oscaro
PRODUCT_DEVICE := oscaro
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := Nord CE2 Lite 5G
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OP535DL1-user 14 UKQ1.230924.001 S.1eb2d2d-203cb-6990a release-keys" \
    BuildFingerprint=OnePlus/CPH2381/OP535DL1:14/UKQ1.230924.001/S.1eb2d2d-203cb-6990a:user/release-keys \
    DeviceName=OP535DL1 \
    DeviceProduct=OP535DL1 \
    SystemDevice=OP535DL1 \
    SystemName=OP535DL1
