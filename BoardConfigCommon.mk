DEVICE_COMMON_PATH := device/Unihertz/Atom_LXL

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_USES_64_BIT_BINDER := true

# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Bootloader
TARGET_BOARD_PLATFORM := mt6771
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_NO_BOOTLOADER := true

# These two are for MTK Chipsets only
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=enforcing
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x14f88000
#BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_DTB_OFFSET := 0x13f88000
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_TAGS_OFFSET := 0x13f88000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_USERDATAIMAGE_PARTITION_SIZE := 121978716160
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3470016512
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 681574400
BOARD_VENDORIMAGE_PARTITION_SIZE := 567005184    
BOARD_SUPER_PARTITION_SIZE := 4831838208
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4831838208
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := product vendor system

# Non-SAR on Android 10 means the presence of stage-1 ramdisk
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
BUILD_WITHOUT_VENDOR := true
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Recovery
TARGET_RECOVERY_INITRC := $(DEVICE_COMMON_PATH)/recovery/root/init.recovery.mt6771.rc
TARGET_RECOVERY_DEVICE_DIRS += $(DEVICE_COMMON_PATH)
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_USES_RECOVERY_AS_BOOT := false
TARGET_NO_RECOVERY := false
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
RECOVERY_SDCARD_ON_DATA := true

# Treble
BOARD_VNDK_VERSION := current

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_COMMON_PATH)/system.prop

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Crypto
#TW_INCLUDE_CRYPTO := true
#TW_INCLUDE_CRYPTO_FBE := true
#TW_INCLUDE_FBE := true
#TW_INCLUDE_FBE_METADATA_DECRYPT := true

TARGET_RECOVERY_DEVICE_MODULES += android.hardware.gatekeeper@1.0
TARGET_RECOVERY_DEVICE_MODULES += libgatekeeper
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.keymaster@4.0
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.keymaster@3.0
TARGET_RECOVERY_DEVICE_MODULES += libkeymaster_messages
TARGET_RECOVERY_DEVICE_MODULES += libkeymaster_portable
TARGET_RECOVERY_DEVICE_MODULES += libpuresoftkeymasterdevice
TARGET_RECOVERY_DEVICE_MODULES += libsoft_attestation_cert

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.gatekeeper@1.0.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libgatekeeper.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.0.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@3.0.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += $(TARGET_OUT_SHARED_LIBRARIES)/libsoft_attestation_cert.so

# TW Config
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_SECONDARY_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80

TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"  
TW_NO_USB_STORAGE := false
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true

TW_USE_TOOLBOX := true
TW_EXTRA_LANGUAGES := false
TW_DEFAULT_LANGUAGE := en                    
TW_NO_SCREEN_BLANK := true
TW_NO_BATT_PERCENT := false
TW_EXCLUDE_TWRPAPP := true
TW_EXCLUDE_PYTHON := true
TARGET_DISABLE_TRIPLE_BUFFERING := false

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Hack to get keymaster to recognize the key files
PLATFORM_SECURITY_PATCH := 2099-12-05
VENDOR_SECURITY_PATCH := 2021-07-05
