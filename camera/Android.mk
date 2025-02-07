LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    system/media/camera/include \
    frameworks/native/include/media/openmax

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    liblog \
    libcamera_client \
    libutils \
    libcutils \
    libbase \
    libsensor \
    libhidltransport \
    libnativewindow \
    libgui \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0

LOCAL_STATIC_LIBRARIES := \
    libarect

LOCAL_HEADER_LIBRARIES := libnativebase_headers
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true

include $(BUILD_SHARED_LIBRARY)
