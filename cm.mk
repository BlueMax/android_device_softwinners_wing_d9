## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := wing_d9

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/softwinners/wing_d9/device_wing_d9.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wing_d9
PRODUCT_NAME := cm_wing_d9
PRODUCT_BRAND := softwinners
PRODUCT_MODEL := wing_d9
PRODUCT_MANUFACTURER := softwinners
