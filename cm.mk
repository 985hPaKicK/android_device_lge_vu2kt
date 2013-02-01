# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vu2kt

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/vu2kt/device_vu2kt.mk)

# Device naming
PRODUCT_DEVICE := vu2kt
PRODUCT_NAME := cm_vu2kt
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-F200K
PRODUCT_MANUFACTURER := LGE

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=vu2kt_KT_KR BUILD_FINGERPRINT=lge/vu2kt_KT_KR/vu2kt:4.0.4/IMM76L/F200K10e.1354768122:user/release-keys PRIVATE_BUILD_DESC="vu2kt_KT_KR-user 4.0.4 IMM76L F200K10e.1354768122 release-keys" BUILD_NUMBER=F200K10e.1354768122
