#
# Copyright (C) 2011 The CyanogenMod Project
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

# common msm8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

# overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.t6dwg \
    init.qcom.usb.rc \
    init.t6dwg.rc \
    init.t6dwg.recovery.rc \
    ueventd.t6dwg.rc

# Post boot service
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.post_boot.sh:system/etc/init.post_boot.sh

# Wifi && BT
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.bt.bluedroid.sh:system/etc/init.qcom.bt.bluedroid.sh

# Recovery
PRODUCT_PACKAGES += \
    charger \
    choice_fn \
    offmode_charging \
    init.recovery.qcom.rc

PRODUCT_PACKAGES += \
    battery_0.png \
    battery_1.png \
    battery_2.png \
    battery_3.png \
    battery_4.png \
    battery_fail.png \
    battery_full.png

# QC thermald config
PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_PACKAGES += \
    libnetcmdiface

# Wifi config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/apstacon.conf:/system/etc/wifi/apstacon.conf \
    $(LOCAL_PATH)/configs/wifi/hostapd_default.conf:/system/etc/wifi/hostapd_default.conf \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant.conf:/system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/wifi/WCNSS_qcom_cfg_default.ini:/system/etc/wifi/WCNSS_qcom_cfg_default.ini \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/calibration:/system/etc/calibration \
    $(LOCAL_PATH)/configs/calibration_EMEA:/system/etc/calibration_EMEA

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Sound configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    $(LOCAL_PATH)/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AudioBTID.csv:system/etc/AudioBTID.csv \
    $(LOCAL_PATH)/configs/AudioBTIDnew.csv:system/etc/AudioBTIDnew.csvs \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm:system/etc/snd_soc_msm/snd_soc_msm \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC_S:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC_S \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC_SK:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_DMIC_SK \
    $(LOCAL_PATH)/dsp/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    $(LOCAL_PATH)/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    $(LOCAL_PATH)/keylayout/max1187x_touchscreen_0.kl:system/usr/keylayout/max1187x_touchscreen_0.kl \

# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    $(LOCAL_PATH)/idc/max1187x_touchscreen_0.idc:system/usr/idc/max1187x_touchscreen_0.idc

# Audio
PRODUCT_PACKAGES += \
    libaudioamp

# Camera
PRODUCT_PACKAGES += \
    camera.msm8960

# GPS
PRODUCT_PACKAGES += \
    gps.msm8960

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8960 \
    libnfc \
    libnfc_ndef \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# Misc Packages
PRODUCT_PACKAGES += \
    Torch

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/htc/max-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/htc/max-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.service.adb.enable=1 \

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.nfc.fw_download=true \
    debug.nfc.fw_boot_download=false \
    debug.nfc.se=true \
    ro.nfc.port=I2C \
    ro.sf.lcd_density=480 \
    persist.timed.enable=true \
    persist.gps.qmienabled=true \
    ro.baseband.arch=mdm \
    ro.cam.hw.version=m7 \
    ro.opengles.version=196608 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.call_ring.delay=3000 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=8

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi xxhdpi

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Include non-opensource parts
$(call inherit-product, vendor/htc/max-common/max-common-vendor.mk)
