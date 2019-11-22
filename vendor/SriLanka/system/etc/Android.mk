LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#################################################
$(shell mkdir -p $(TARGET_OUT)/vendor/SriLanka/system/etc/)
$(shell cp -r $(LOCAL_PATH)/* $(TARGET_OUT)/vendor/SriLanka/system/etc/)
