# Copyright (C) 2012 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_edison,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_edison

# Build paprefs from sources
PREFS_FROM_SOURCE := false

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/motorola/edison/full_edison.mk)

# Product Package Extras
include vendor/pa/packages/edison.mk

# Include CM extras
EXTRA_CM_PACKAGES := true

# Override AOSP build properties
PRODUCT_NAME := pa_edison
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := edison
PRODUCT_MODEL := MB865
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=MB865_att TARGET_DEVICE=edison BUILD_FINGERPRINT="motorola/MB865_att/edison:4.0.4/6.7.2-226-EDICS-10/67.21.125:user/release-keys" PRIVATE_BUILD_DESC="edison-user 4.0.4 6.7.2-226-EDICS-10 67.21.125 release-keys"

# Include ParanoidAndroid repos configuration
include vendor/pa/config/pa_addons.mk

endif