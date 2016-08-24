# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

$(call inherit-product, device/samsung/jflte/aosp_jflte.mk)

#needed properties and vendor blobs for GSM
TARGET_SYSTEM_PROP += device/samsung/jflte/system.jfgsm.prop
TARGET_NEEDS_JF_GSM_VENDOR_BLOBS := true

#needed properties for our model
PRODUCT_PROPERTY_OVERRIDES += \
  ro.product.model=GT-I9505 \
  ro.product.device=jflte

#RAMDISK  
#ro.product.name is needed by some vendor blobs (ex.: for thermal sensor binaries)
#set ro.product.name as default property so it can not be overwirten by PRODUCT_NAME via build.prop 
#(ro.* properties are never overwritten after they are defined)
ADDITIONAL_DEFAULT_PROPERTIES += \
  ro.product.name=jfltexx

PRODUCT_NAME := jfltexx
PRODUCT_MODEL := jfltexx  
