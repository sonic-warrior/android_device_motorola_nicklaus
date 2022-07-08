#
# Copyright (C) 2022 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from nicklaus device
$(call inherit-product, device/motorola/nicklaus/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# LineageOS Device Maintainers
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=sonic-warrior

LINEAGE_BUILD_TYPE := UNNOFFICIAL

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nicklaus
PRODUCT_NAME := lineage_nicklaus
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto E4 Plus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto E4 Plus" \
    TARGET_DEVICE="nicklaus" \
    PRIVATE_BUILD_DESC="nicklaus-user 7.1.1 NMA26.42-169 release-keys"

# for specific
$(call inherit-product, vendor/motorola/nicklaus/nicklaus-vendor.mk)

# FINGERPRINT
BUILD_FINGERPRINT := google/walleye/walleye:7.1.1/NMA26.42/300:user/release-keys
