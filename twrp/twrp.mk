# Copyright (C) 2017 The LineageOS Project
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

PRODUCT_COPY_FILES += \
    device/samsung/smdk4412-common/twrp/twrp.fstab:recovery/root/etc/twrp.fstab

# We need to make recovery size smaller. Use LZMA compression.
# Needs CONFIG_RD_LZMA=y in kernel defconfig.
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/smdk4412-common/twrp/custombootimg.mk
LZMA_RAMDISK_TARGETS := boot,recovery

TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_THEME := landscape_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_CRYPTO := true
DEVICE_RESOLUTION := 1280x800
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sdcard"
# SP1_NAME := "efs"
# SP1_BACKUP_METHOD := files
# SP1_MOUNTABLE := 1
# SP2_BACKUP_METHOD := image
# SP2_MOUNTABLE := 0
RECOVERY_TOUCHSCREEN_FLIP_Y := true
RECOVERY_TOUCHSCREEN_SWAP_XY := true

