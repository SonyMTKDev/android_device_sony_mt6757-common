  
#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBGATEKEEPER_LIBRARY := /vendor/lib/hw/libMcGatekeeper.so 
LIBGATEKEEPER64_LIBRARY := /vendor/lib64/hw/libMcGatekeeper.so 

LIBGATEKEEPERMT6757_SYMLINK := $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.mt6757.so
$(LIBGATEKEEPERMT6757_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib/hw/gatekeeper.mt6757.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGATEKEEPER_LIBRARY) $@

LIBGATEKEEPERMT675764_SYMLINK := $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.mt6757.so
$(LIBGATEKEEPERMT675764_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/hw/gatekeeper.mt6757.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBGATEKEEPER64_LIBRARY) $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(LIBGATEKEEPERMT6757_SYMLINK) \
	$(LIBGATEKEEPERMT675764_SYMLINK)