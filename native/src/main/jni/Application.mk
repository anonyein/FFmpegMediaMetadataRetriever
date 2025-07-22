# build with android-ndk-r20

APP_ABI := armeabi-v7a x86 x86_64 arm64-v8a
APP_STL := c++_shared
APP_CPPFLAGS := -std=c++11
APP_SUPPORT_FLEXIBLE_PAGE_SIZES := true

# 16KB page size alignment support
APP_LDFLAGS += -Wl,-z,max-page-size=16384
APP_LDFLAGS += -Wl,-z,common-page-size=16384
APP_LDFLAGS += -Wl,--hash-style=sysv
