#
# Copyright (C) 2012-2017 ParanoidAndroid Project
#
# Licensed under the GNU GPLv2 license
#
# The text of the license can be found in the LICENSE file
# or at https://www.gnu.org/licenses/gpl-2.0.txt
#

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES += $(call all-java-files-under, src)

LOCAL_MODULE_TAGS := optional
LOCAL_USE_AAPT2 := true
LOCAL_PRIVATE_PLATFORM_APIS := true

LOCAL_STATIC_ANDROID_LIBRARIES += androidx.legacy_legacy-support-v4
LOCAL_STATIC_ANDROID_LIBRARIES += androidx.appcompat_appcompat
LOCAL_STATIC_ANDROID_LIBRARIES += com.google.android.material_material

LOCAL_STATIC_JAVA_LIBRARIES += guava

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res

LOCAL_PACKAGE_NAME := SyberiaPapers

include $(BUILD_PACKAGE)
