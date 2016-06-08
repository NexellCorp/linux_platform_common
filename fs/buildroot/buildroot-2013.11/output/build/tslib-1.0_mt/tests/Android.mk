#ts_test ts_calibrate ts_print ts_print_raw ts_harvest
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= ts_test.c fbutils.c font_8x8.c font_8x16.c 
#font.h fbutils.h 

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := tslib-1.0
LOCAL_MODULE := ts_test
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= ts_calibrate.c fbutils.c testutils.c font_8x8.c font_8x16.c 
#font.h fbutils.h testutils.h 

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := tslib-1.0
LOCAL_MODULE := ts_calibrate
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= ts_print.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := tslib-1.0
LOCAL_MODULE := ts_print
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= ts_print_raw.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := tslib-1.0
LOCAL_MODULE := ts_print_raw
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)
LOCAL_SRC_FILES:= ts_harvest.c fbutils.c testutils.c font_8x8.c font_8x16.c 
#font.h fbutils.h  testutils.h 

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/../ \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := tslib-1.0
LOCAL_MODULE := ts_harvest
LOCAL_PRELINK_MODULE := false
include $(BUILD_EXECUTABLE)

