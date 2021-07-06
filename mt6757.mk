#
# Copyright 2020 The LineageOS Project.
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

COMMON_PATH := device/sony/mt6757-common

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(COMMON_PATH)/overlay \
    $(COMMON_PATH)/overlay-lineage

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.usb.default \
    audio_policy.stub

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(COMMON_PATH)/audio/AudioParamOptions.xml:system/vendor/etc/audio_param/AudioParamOptions.xml \
    $(COMMON_PATH)/audio/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    $(COMMON_PATH)/audio/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(COMMON_PATH)/audio/audio_em.xml:system/vendor/etc/audio_em.xml \
    $(COMMON_PATH)/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
    $(COMMON_PATH)/audio/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
    $(COMMON_PATH)/audio/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    $(COMMON_PATH)/audio/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    $(COMMON_PATH)/audio/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# Graphics
PRODUCT_PACKAGES += \
    libGLES_android

# Keylayout
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(COMMON_PATH)/keylayout/mtk-tpd.idc:system/usr/idc/mtk-tpd.idc

# Media
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/media/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(COMMON_PATH)/media/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    $(COMMON_PATH)/media/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml \
    $(COMMON_PATH)/media/media_codecs_mediatek_audio.xml:system/vendor/etc/media_codecs_mediatek_audio.xml \
    $(COMMON_PATH)/media/media_codecs_mediatek_video.xml:system/vendor/etc/media_codecs_mediatek_video.xml \
    $(COMMON_PATH)/media/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(COMMON_PATH)/media/media_profiles.xml:system/vendor/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/vendor/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/vendor/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/vendor/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/vendor/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/vendor/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.vr.xml:system/vendor/etc/permissions/android.software.vr.xml \
    frameworks/native/data/etc/android.software.webview.xml:system/vendor/etc/permissions/android.software.webview.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml

# Rootdir
PRODUCT_PACKAGES += \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    fstab.enableswap \
    fstab.mt6757 \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6757.rc \
    init.mt6757.usb.rc \
    init.project.rc \
    init.recovery.mt6757.rc \
    init.sensor_1_0.rc \
    init.sony-bootstrap-checkfirstboot.rc \
    init.sony-bootstrap-mr.rc \
    init.sony-bootstrap.rc \
    init.sony-bootstrap-wipedata.rc \
    init.sony-bugreport.rc \
    init.sony-drm.rc \
    init.sony-enterprise.rc \
    init.sony-fota.rc \
    init.sony-trimarea.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    ueventd_mt6757.rc

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/sbin/checkfirstboot:root/sbin/checkfirstboot \
    $(COMMON_PATH)/rootdir/sbin/fota-ua:root/sbin/fota-ua \
    $(COMMON_PATH)/rootdir/sbin/fuelgauged_static:root/sbin/fuelgauged_static \
    $(COMMON_PATH)/rootdir/sbin/mr:root/sbin/mr \
    $(COMMON_PATH)/rootdir/sbin/tad_static:root/sbin/tad_static \
    $(COMMON_PATH)/rootdir/sbin/ua-data-mounter:root/sbin/ua-data-mounter \
    $(COMMON_PATH)/rootdir/sbin/wait4tad_static:root/sbin/wait4tad_static \
    $(COMMON_PATH)/rootdir/sbin/wipedata:root/sbin/wipedata

# Seccomp
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(COMMON_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# WiFi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    hostapd_cli \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant.conf:system/vendor/etc/wifi/wpa_supplicant.conf \
    $(COMMON_PATH)/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

# Dalvik Tweak
PRODUCT_TAGS += dalvik.gc.type-precise

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Vendor
$(call inherit-product-if-exists, vendor/sony/mt6757-common/mt6757-commn-vendor.mk)