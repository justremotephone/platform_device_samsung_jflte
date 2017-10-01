LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
    system/media/camera/include \
    system/core/base/include \
    frameworks/native/libs/arect/include \
    system/libhidl/base/include \
    system/libhidl/transport/token/1.0/utils/include

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.msm8960
LOCAL_MODULE_TAGS := optional

#include $(BUILD_SHARED_LIBRARY)
