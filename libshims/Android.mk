LOCAL_PATH := $(call my-dir)

# Program Binary Service Shim
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    program_binary/program_binary.cpp

LOCAL_SHARED_LIBRARIES := \
    libcutils

LOCAL_MODULE := libshim_program_binary

LOCAL_CFLAGS := -O3 -Wno-unused-variable -Wno-unused-parameter
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)