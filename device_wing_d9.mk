$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/softwinners/wing_d9/wing_d9-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/softwinners/wing_d9/overlay

LOCAL_PATH := device/softwinners/wing_d9
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_wing_d9
PRODUCT_DEVICE := wing_d9

# Custom stuff
PRODUCT_COPY_FILES += \
	device/softwinners/wing_d9/extra/disp.ko:recovery/root/disp.ko \
	device/softwinners/wing_d9/extra/hdmi.ko:recovery/root/hdmi.ko \
	device/softwinners/wing_d9/extra/lcd.ko:recovery/root/lcd.ko \
	device/softwinners/wing_d9/extra/nand.ko:recovery/root/nand.ko \
	device/softwinners/wing_d9/extra/init_parttion.sh:recovery/root/sbin/init_parttion.sh \
	device/softwinners/wing_d9/extra/ueventd.sun7i.rc:recovery/root/ueventd.sun7i.rc \
	device/softwinners/wing_d9/extra/ft5x_ts.ko:recovery/root/ft5x_ts.ko
