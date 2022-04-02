# Release name
PRODUCT_RELEASE_NAME := SM-J110H

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j1pop3g/device_j1pop3g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j1pop3g
PRODUCT_NAME := cm_j1pop3g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J110H
PRODUCT_CHARACTERISTICS := phone
