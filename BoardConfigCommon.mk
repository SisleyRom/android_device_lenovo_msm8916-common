#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

PLATFORM_PATH := device/lenovo/msm8916-common

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOOTLOADER_BOARD_NAME := MSM8916

TARGET_NO_BOOTLOADER := true

# Architecture
ifneq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
else
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true
endif

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_DEEP_BUFFER_RINGTONE := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := true
AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true

# DexPreopt debug info
WITH_DEXPREOPT_DEBUG_INFO := false

# Display
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000U
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_USES_ION := true

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(PLATFORM_PATH)/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ROOT_EXTRA_FOLDERS := firmware persist

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXCLUDE_SERIF_FONTS := true
SMALLER_FONT_FOOTPRINT := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 loop.max_part=7
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET := 0x02000000

TARGET_KERNEL_SOURCE := kernel/lenovo/msm8916

# Manifest
DEVICE_MANIFEST_FILE := $(PLATFORM_PATH)/manifest.xml

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Power
ifeq ($(TARGET_BOARD_PLATFORM_VARIANT),msm8939)
TARGET_POWERHAL_SET_INTERACTIVE_EXT := $(PLATFORM_PATH)/power/power_ext.c
endif
TARGET_USES_INTERACTION_BOOST := true

# QCOM
BOARD_USES_QCOM_HARDWARE := true

# Radio
MALLOC_SVELTE := true
TARGET_RIL_VARIANT := caf

# Recovery
TARGET_RECOVERY_UPDATER_LIBS := librecovery_updater_cm

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(PLATFORM_PATH)

# SELinux
include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += \
    $(PLATFORM_PATH)/sepolicy

# Shims
TARGET_LD_SHIM_LIBS := \
    /system/vendor/lib64/libizat_core.so|libshims_get_process_name.so \
    /system/vendor/bin/mm-qcamera-daemon|libshim_atomic.so \
    /system/vendor/lib/libmmcamera2_imglib_modules.so|libshim_atomic.so \
    /system/vendor/lib/libqomx_jpegenc.so|libshim_atomic.so \
    /system/vendor/lib/libmmqjpeg_codec.so|libboringssl-compat.so \
    /system/vendor/lib/libmmcamera2_stats_modules.so|libshim_atomic.so \
    /system/lib/hw/camera.vendor.msm8916.so|libshim_atomic.so \
    /system/lib/hw/camera.vendor.msm8916.so|libboringssl-compat.so \
    /system/vendor/lib/libqomx_jpegenc.so|libboringssl-compat.so \
    /system/lib/libcrypto.so|libboringssl-compat.so

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn

PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_DISABLE_WCNSS_CONFIG_COPY := true
TARGET_USES_QCOM_WCNSS_QMI := true

WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
