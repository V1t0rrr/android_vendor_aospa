# Copyright (C) 2015 ParanoidAndroid Project
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
ifeq (pa_oneplus2,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include ParanoidAndroid common configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/oneplus/oneplus2/full_oneplus2.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_oneplus2
PRODUCT_DEVICE := oneplus2
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := ONE A2003
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oneplus2 \
    TARGET_DEVICE=ONE A2003 \
    BUILD_FINGERPRINT=OnePlus2-user 5.1.1 LMY47V 21 dev-keys \
    PRIVATE_BUILD_DESC="OnePlus/OnePlus2/OnePlus2:5.1.1/LMY47V/1436933040:user/release-keys"

endif