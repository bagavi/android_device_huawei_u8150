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

# The new ICS drivers for adreno 200 GPU.

ADRENO=device/huawei/u8150/adreno

# library files
PRODUCT_COPY_FILES += \
	$(ADRENO)/lib/libC2D2.so:system/lib/libC2D2.so \
	$(ADRENO)/lib/libgsl.so:system/lib/libgsl.so \
	$(ADRENO)/lib/libOpenVG.so:system/lib/libOpenVG.so \
	$(ADRENO)/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
	$(ADRENO)/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
	$(ADRENO)/lib/egl/eglsubAndroid.so:system/lib/egl/elgsubAndroid.so \
	$(ADRENO)/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
	$(ADRENO)/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
	$(ADRENO)/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
	$(ADRENO)/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
	$(ADRENO)/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
	
# files in the etc folder

PRODUCT_COPY_FILES += \
	$(ADRENO)/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
	$(ADRENO)/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
	$(ADRENO)/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
	$(ADRENO)/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
	$(ADRENO)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
	$(ADRENO)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
	$(ADRENO)/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
	$(ADRENO)/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
	
