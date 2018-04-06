################################################################
#
# Mp3Decoder Android Makefile wrapper
#
################################################################


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := usb
LOCAL_SRC_FILES := core.c descriptor.c hotplug.c io.c libusb_jni.c sync.c os/linux_netlink.c os/linux_usbfs.c os/poll_posix.c os/threads_posix.c

LOCAL_CFLAGS += -W -Wall
LOCAL_CFLAGS += -fPIC -DPIC


ifeq ($(TARGET_BUILD_TYPE),release)
	LOCAL_CFLAGS += -O2
endif


LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog

include $(BUILD_SHARED_LIBRARY)
