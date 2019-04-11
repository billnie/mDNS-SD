LOCAL_PATH:= $(call my-dir)

########################
# include $(CLEAR_VARS)
# LOCAL_MODULE := libhexdump
# LOCAL_SRC_FILES := ../libhexdump/libhexdump.a
# LOCAL_MODULE_TAGS := eng
# LOCAL_MODULE_SUFFIX := .a
# LOCAL_MODULE_CLASS := STATIC_LIBRARIES
# include $(BUILD_PREBUILT)
########################


include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
        mdnssd-min.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../libhexdump \

LOCAL_SHARED_LIBRARIES:= \
        libbinder                       \
        libutils                        \
        liblog                          \
        libcutils                       \

LOCAL_STATIC_LIBRARIES += libhexdump

LOCAL_MODULE:= mDNS-min

LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
