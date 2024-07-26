#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

# Blur effect
TARGET_ENABLE_BLUR := false

# Matrixx Stuff
MATRIXX_BUILD_TYPE := SHAWK
MATRIXX_CHIPSET := SM6125
MATRIXX_BATTERY := 4000mAh
MATRIXX_DISPLAY :=  1080x2340
MATRIXX_MAINTAINER := eklerismunir

# Exclude prebuilt apps
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_AUXIO := true
TARGET_EXCLUDES_VIA := true

# Device identifier
PRODUCT_NAME := lineage_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8/8T
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi