# Copyright (C) 2022 Paranoid Android
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

ifeq (aospa_shiba,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/google/shusky/aosp_shiba.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Resolution for bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BRAND := google
PRODUCT_DEVICE := shiba
PRODUCT_MANUFACTURER := Google
PRODUCT_MODEL := Pixel 8
PRODUCT_NAME := aospa_shiba

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=shiba \
    PRIVATE_BUILD_DESC="shiba-user 14 UD1A.231105.004 11010374 release-keys"

BUILD_FINGERPRINT := google/shiba/shiba:14/UD1A.231105.004/11010374:user/release-keys

$(call inherit-product, vendor/google_devices/shiba/shiba.mk)

endif
