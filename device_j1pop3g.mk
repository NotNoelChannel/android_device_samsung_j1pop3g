$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j1pop3g/j1pop3g-common-vendor.mk)

# Use high-density artwork where available
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/j1pop3g/rc_files/init.sc8830_ss.rc:root/init.sc8830_ss.rc \
	device/samsung/j1pop3g/rc_files/init.j1pop3g.rc:root/init.j1pop3g.rc \
	device/samsung/j1pop3g/rc_files/init.j1pop3g_base.rc:root/init.j1pop3g_base.rc \
	device/samsung/j1pop3g/rc_files/init.wifi.rc:root/init.wifi.rc \
	device/samsung/j1pop3g/fstab.sc8830:root/fstab.sc8830 \
	device/samsung/j1pop3g/rc_files/init.board.rc:root/init.board.rc \
	device/samsung/j1pop3g/rc_files/init.sc8830.rc:root/init.sc8830.rc \
	device/samsung/j1pop3g/rc_files/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
	device/samsung/j1pop3g/rc_files/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
        device/samsung/j1pop3g/init.recovery.board.rc:root/init.recovery.board.rc \
        device/samsung/j1pop3g/property_contexts:root/property_contexts \
        device/samsung/j1pop3g/seapp_contexts:root/seapp_context \
        device/samsung/j1pop3g/sepolicy/file_contexts:root/file_contexts \
        device/samsung/j1pop3g/root/sepolicy:root/sepolicy


LOCAL_PATH := device/samsung/j1pop3g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

ifeq ($(TARGET_BUILD_VARIANT),user)      
else      
endif

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_j1pop3g
PRODUCT_DEVICE := j1pop3g
PRODUCT_MODEL := SM-J110H
