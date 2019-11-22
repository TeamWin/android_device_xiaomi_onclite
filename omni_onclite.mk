#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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
#

# Release name
PRODUCT_RELEASE_NAME := onclite

$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953

PRODUCT_DEVICE := onc
PRODUCT_NAME := omni_onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Redmi 7
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := onclite
TARGET_VENDOR_DEVICE_NAME := onclite

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm632 \
    sys.usb.controller=7000000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
