LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#################################################
$(shell mkdir -p $(TARGET_OUT)/vendor/CzechRepublic/system/etc/)
$(shell cp -r $(LOCAL_PATH)/* $(TARGET_OUT)/vendor/CzechRepublic/system/etc/)

#################################################
$(shell mkdir -p $(TARGET_OUT)/vendor/CzechRepublic/system/etc/acdbdata/QRD)
$(shell cp -r $(LOCAL_PATH)/acdbdata/*.acdb $(TARGET_OUT)/vendor/CzechRepublic/system/etc/acdbdata/QRD)

