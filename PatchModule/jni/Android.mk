LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := Patch
LOCAL_SRC_FILES =: bspatch.c \
                   bzip2\blocksort.c \
                   bzip2\bzip2.c \
                   bzip2\bzip2recover.c \
                   bzip2\bzlib.c \
                   bzip2\compress.c \
                   bzip2\crctable.c \
                   bzip2\decompress.c \
                   bzip2\dlltest.c \
                   bzip2\huffman.c \
                   bzip2\mk251.c \
                   bzip2\randtable.c \
                   bzip2\spewG.c \
                   bzip2\unzcrash.c \
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_LDLIBS := -llog
include $(BUILD_SHARED_LIBRARY)

