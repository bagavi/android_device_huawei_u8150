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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := huawei_u8150
PRODUCT_DEVICE := u8150
PRODUCT_MODEL := U8150
PRODUCT_BRAND := Huawei

PRODUCT_AAPT_CONFIG := mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Graphics 
PRODUCT_PACKAGES += \
    gralloc.u8150 \
	gralloc.msm7k \
	copybit.msm7k \
    copybit.u8150

# Audio
PRODUCT_PACKAGES += \
    audio.primary.u8150 \
    audio_policy.u8150 \
    audio.a2dp.default

# Zram
PRODUCT_PACKAGES += \
    hwprops \
    rzscontrol

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libopencorehw \
    libmm-omxcore \
    libOmxCore

# Other
PRODUCT_PACKAGES += \
	lights.msm7k \
    lights.u8150 \
    gps.u8150 \
    camera.u8150 \
    Apollo

# Hardware permissions
#PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Copy the gdbserver
PRODCUT_COPY_FILES += \
	device/huawei/u8150/prebuilt/gdbserver:data/local/gdbserver 
# Vold and USB
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/huawei/u8150/prebuilt/etc/start_usb0.sh:system/etc/start_usb0.sh \
    device/huawei/u8150/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Init files
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/initlogo.rle:root/initlogo.rle \
    device/huawei/u8150/prebuilt/init.u8150.usb.rc:root/init.u8150.usb.rc \
    device/huawei/u8150/prebuilt/init.u8150.rc:root/init.u8150.rc \
    device/huawei/u8150/prebuilt/ueventd.u8150.rc:root/ueventd.u8150.rc \
    device/huawei/u8150/prebuilt/init.rc:root/init.rc \
    device/huawei/u8150/prebuilt/ueventd.rc:root/ueventd.rc

# Wi-Fi releated
PRODUCT_COPY_FILES += \
	device/huawei/u8150/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/huawei/u8150/prebuilt/lib/modules/dhd.ko:system/lib/modules/dhd.ko \
    device/huawei/u8150/prebuilt/etc/fw_4319.bin:system/etc/fw_4319.bin \
    device/huawei/u8150/prebuilt/etc/fw_4319_apsta.bin:system/etc/fw_4319_apsta.bin \
    device/huawei/u8150/prebuilt/etc/nv_4319.txt:system/etc/nv_4319.txt \
    device/huawei/u8150/prebuilt/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \
    device/huawei/u8150/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Audio
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/huawei/u8150/prebuilt/etc/AudioFilter.csv:system/etc/AudioFilter.csv

# Bluetooth configuration files
PRODUCT_COPY_FILES += \
    system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Touchscreen
PRODUCT_COPY_FILES += \
    device/huawei/u8150/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    device/huawei/u8150/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/cypress-ts-innolux_Ver04.idc:system/usr/idc/cypress-ts-innolux_Ver04.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen.Ver23.idc:system/usr/idc/melfas-touchscreen.Ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen_ver23.idc:system/usr/idc/melfas-touchscreen_ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen_Ver23.idc:system/usr/idc/melfas-touchscreen_Ver23.idc \
    device/huawei/u8150/prebuilt/usr/idc/melfas-touchscreen.idc:system/usr/idc/melfas-touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    device/huawei/u8150/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/huawei/u8150/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    device/huawei/u8150/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    device/huawei/u8150/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    device/huawei/u8150/prebuilt/usr/idc/touchscreen-keypad.idc:system/usr/idc/touchscreen-keypad.idc \
    device/huawei/u8150/prebuilt/usr/idc/msm_touchscreen.idc:system/usr/idc/msm_touchscreen.idc \
    device/huawei/u8150/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc \
    device/huawei/u8150/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics.kl:system/usr/keylayout/synaptics.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/cypress-ts-innolux_Ver04.kl:system/usr/keylayout/cypress-ts-innolux_Ver04.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen.Ver23.kl:system/usr/keylayout/melfas-touchscreen.Ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/melfas-touchscreen_ver23.kl:system/usr/keylayout/melfas-touchscreen_ver23.kl \
    device/huawei/u8150/prebuilt/usr/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl
    
# other stuff in modules folder
#PRODUCT_COPY_FILES += \
#	device/huawei/u8150/prebuilt/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so
PRODUCT_COPY_FILES += \
	device/huawei/u8150/prebuilt/lib/modules/evbug.ko:system/lib/modules/evbug.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_oobtest.ko:system/lib/modules/mtd_oobtest.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_readtest.ko:system/lib/modules/mtd_readtest.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_stresstest.ko:system/lib/modules/mtd_stresstest.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_torturetest.ko:system/lib/modules/mtd_torturetest.ko \
	device/huawei/u8150/prebuilt/lib/modules/pmem_kernel_test.ko:system/lib/modules/pmem_kernel_test.ko \
	device/huawei/u8150/prebuilt/lib/modules/zram.ko:system/lib/modules/zram.ko \
	device/huawei/u8150/prebuilt/lib/modules/dma_test.ko:system/lib/modules/dma_test.ko \
	device/huawei/u8150/prebuilt/lib/modules/msm_battery.ko:system/lib/modules/msm_battery.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_pagetest.ko:system/lib/modules/mtd_pagetest.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_speedtest.ko:system/lib/modules/mtd_speedtest.ko \
	device/huawei/u8150/prebuilt/lib/modules/mtd_subpagetest.ko:system/lib/modules/mtd_subpagetest.ko \
	device/huawei/u8150/prebuilt/lib/modules/oprofile.ko:system/lib/modules/oprofile.ko \
	device/huawei/u8150/prebuilt/lib/modules/reset_modem.ko:system/lib/modules/reset_modem.ko \
