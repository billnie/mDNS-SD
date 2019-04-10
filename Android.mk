LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        mdnssd.c                 \
        mdnssd-min.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/libhexdump \
        $(LOCAL_PATH)/

LOCAL_SHARED_LIBRARIES:= \
        libbinder                       \
        libutils                        \
        liblog                          \
        libcutils                       \

#LOCAL_STATIC_LIBRARIES += libhexdump

LOCAL_MODULE:= mDNS

LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
