# Copyright (C) 2013 ParanoidAndroid Project
# Copyright (C) 2014 Screw'd Android Project
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

# Include overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/$(VENDOR)/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/$(VENDOR)/overlay/$(TARGET_PRODUCT)

# Copy custom ramdisk
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/init.$(VENDOR).rc:root/init.$(VENDOR).rc

# init.d script support
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# APN
PRODUCT_COPY_FILES += \
    vendor/$(VENDOR)/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
    
# HFM Files
PRODUCT_COPY_FILES += \
	vendor/screwd/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
	vendor/screwd/prebuilt/etc/hosts.og:system/etc/hosts.og    

# Gapps backup script
# PRODUCT_COPY_FILES += \
#    vendor/$(VENDOR)/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
#    vendor/$(VENDOR)/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
#    vendor/$(VENDOR)/prebuilt/bin/50-backupScript.sh:system/addon.d/50-backupScript.sh

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/screwd/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/screwd/prebuilt/etc/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon  

# DU's init.d tweaks
PRODUCT_COPY_FILES += \
    vendor/screwd/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/screwd/prebuilt/etc/init.d/00check:system/etc/init.d/00check \
    vendor/screwd/prebuilt/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/screwd/prebuilt/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/screwd/prebuilt/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/screwd/prebuilt/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/screwd/prebuilt/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/screwd/prebuilt/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/screwd/prebuilt/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/screwd/prebuilt/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/screwd/prebuilt/etc/init.d/11battery:system/etc/init.d/11battery \
    vendor/screwd/prebuilt/etc/init.d/12touch:system/etc/init.d/12touch \
    vendor/screwd/prebuilt/etc/init.d/13minfree:system/etc/init.d/13minfree \
    vendor/screwd/prebuilt/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
    vendor/screwd/prebuilt/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
    vendor/screwd/prebuilt/etc/init.d/16journalism:system/etc/init.d/16journalism \
    vendor/screwd/prebuilt/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
    vendor/screwd/prebuilt/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
    vendor/screwd/prebuilt/etc/init.d/19iostats:system/etc/init.d/19iostats \
    vendor/screwd/prebuilt/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
    vendor/screwd/prebuilt/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
    vendor/screwd/prebuilt/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
    vendor/screwd/prebuilt/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
    vendor/screwd/prebuilt/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/screwd/prebuilt/etc/helpers.sh:system/etc/helpers.sh \
    vendor/screwd/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/screwd/prebuilt/etc/init.d.cfg:system/etc/init.d.cfg

# PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=1
