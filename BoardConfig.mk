#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi sdm710-common
include device/realme/sdm710-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/RMX1851

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX1851,RMX1851CN

# Kernel
TARGET_KERNEL_SOURCE := kernel/realme/RMX1851
TARGET_KERNEL_CONFIG := RMX1851_defconfig

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# SEPolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 2

# VNDK
BOARD_VNDK_RUNTIME_DISABLE := false

# Inherit from the proprietary version
-include vendor/realme/RMX1851/BoardConfigVendor.mk
