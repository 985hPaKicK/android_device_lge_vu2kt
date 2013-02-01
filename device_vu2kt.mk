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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8960 configs
$(call inherit-product, device/lge/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/vu2kt/overlay

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/init.lge_dut.bt.sh:/system/etc/init.lge_dut.bt.sh \
    device/lge/vu2kt/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    device/lge/vu2kt/configs/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    device/lge/vu2kt/configs/init.qcom.efs.sync.sh:/system/etc/init.qcom.efs.sync.sh \
    device/lge/vu2kt/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    device/lge/vu2kt/configs/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    device/lge/vu2kt/configs/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    device/lge/vu2kt/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    device/lge/vu2kt/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    device/lge/vu2kt/configs/init.qcom.thermald_conf.sh:/system/etc/init.qcom.thermald_conf.sh \
    device/lge/vu2kt/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh \

# MSM8960 firmware
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/firmware/cyttsp_8960_cdp.hex:/system/etc/firmware/cyttsp_8960_cdp.hex \
    device/lge/vu2kt/firmware/cyttsp_8064_mtp.hex:/system/etc/firmware/cyttsp_8064_mtp.hex \
    device/lge/vu2kt/firmware/vidc.b00:/system/etc/firmware/vidc.b00 \
    device/lge/vu2kt/firmware/vidc.b01:/system/etc/firmware/vidc.b01 \
    device/lge/vu2kt/firmware/vidc.b02:/system/etc/firmware/vidc.b02 \
    device/lge/vu2kt/firmware/vidc.b03:/system/etc/firmware/vidc.b03 \
    device/lge/vu2kt/firmware/vidc.mdt:/system/etc/firmware/vidc.mdt \
    device/lge/vu2kt/firmware/vidcfw.elf:/system/etc/firmware/vidcfw.elf \
    device/lge/vu2kt/firmware/vidc_1080p.fw:/system/etc/firmware/vidc_1080p.fw

# libril-qc-qmi-1.so (modified)
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/prebuilt/libril-qc-qmi-1.so:/system/lib/libril-qc-qmi-1.so

# Sound firmware
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/firmware/wcd9310_anc.bin:/system/etc/firmware/wcd9310/wcd9310_anc.bin \
    device/lge/vu2kt/firmware/wcd9310_mbhc.bin:/system/etc/firmware/wcd9310/wcd9310_mbhc.bin

# Wifi firmware
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/firmware/fw_bcmdhd.bin:/system/etc/firmware/fw_bcmdhd.bin \
    device/lge/vu2kt/firmware/fw_bcmdhd_apsta.bin:/system/etc/firmware/fw_bcmdhd_apsta.bin \
    device/lge/vu2kt/firmware/fw_bcmdhd_mfg.bin:/system/etc/firmware/fw_bcmdhd_mfg.bin \
    device/lge/vu2kt/firmware/fw_bcmdhd_p2p.bin:/system/etc/firmware/fw_bcmdhd_p2p.bin

# Wifi config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/lge/vu2kt/configs/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/media_profiles.xml:system/etc/media_profiles.xml

# vold config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/thermald.conf:/system/etc/thermald.conf

# QOS manager config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/qosmgr_rules.xml:/system/etc/qosmgr_rules.xml

# snd_soc_msm
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/dsp/snd_soc_msm/snd_soc_msm:/system/etc/snd_soc_msm/snd_soc_msm \
    device/lge/vu2kt/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x

# Sound effects
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/audio_effects.conf:system/etc/audio_effects.conf

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/keylayout/MHLRCP.kl:system/usr/keylayout/MHLRCP.kl \
    device/lge/vu2kt/keylayout/vu2kt-keypad.kl:system/usr/keylayout/vu2kt-keypad.kl \
    device/lge/vu2kt/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
    device/lge/vu2kt/keylayout/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    device/lge/vu2kt/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/idc/keypad-8960.idc:system/usr/idc/keypad-8960.idc \
    device/lge/vu2kt/idc/synaptics_ts.idc:system/usr/idc/synaptics_ts.idc \
    device/lge/vu2kt/idc/osp3-input.idc:system/usr/idc/osp3-input.idc

# NFCEE access control
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/configs/nfcee_access.xml:system/etc/nfcee_access.xml

# Lights
PRODUCT_PACKAGES += \
    lights.msm8960.so

# Camera
PRODUCT_PACKAGES += \
    libcameraservice

# Torch
PRODUCT_PACKAGES += \
    Torch

# hostapd
PRODUCT_PACKAGES += \
    hostapd

# 2nd-init
PRODUCT_COPY_FILES += \
    device/lge/vu2kt/2nd-init/recovery.tar:/system/xbin/recovery.tar \
    device/lge/vu2kt/2nd-init/cm10.tar:/system/xbin/cm10.tar

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/lge/vu2kt/vu2kt-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
