#
# Copyright (C) 2015 The CyanogenMod Project
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

include device/oppo/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/oppo/A37f

# Assert
TARGET_OTA_ASSERT_DEVICE := A37,A37f,A37f_ex,A37fw,15399

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Kernel
TARGET_KERNEL_SOURCE := kernel/oppo/A37f
TARGET_KERNEL_CONFIG := lineageos_A37f_defconfig
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
TARGET_KERNEL_CONFIG := lineageos_A37f_defconfig
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME:= Image.gz-dtb


# Partition info
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 126877696
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2859466752
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11632902144

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

# Inherit from proprietary files
include vendor/oppo/A37f/BoardConfigVendor.mk
