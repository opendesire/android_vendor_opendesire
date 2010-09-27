#
# Set ro.modversion
# 
ifdef OPENDESIRE_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=OpenDesire-4-$(shell date +%m%d%Y)-NIGHTLY
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=OpenDesire-4.0.30
endif

# Set default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=DonMessWivIt.ogg

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.com.android.dataroaming=false

# CyanogenMod specific product packages
PRODUCT_PACKAGES += \
    CMParts \
    CMPartsHelper \
    FileManager \
    Superuser

# Common OD overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/opendesire/overlay

# Bring in some audio files
include frameworks/base/data/sounds/AudioPackage4.mk

OPENDESIRE_WITH_GOOGLE:=true

PRODUCT_COPY_FILES += \
    vendor/opendesire/extras/odupdater.apk:system/app/odupdater.apk

PRODUCT_COPY_FILES += \
    vendor/opendesire/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/opendesire/prebuilt/bin/compcache:system/bin/compcache \
    vendor/opendesire/prebuilt/bin/fix_permissions:system/bin/fix_permissions \
    vendor/opendesire/prebuilt/bin/handle_compcache:system/bin/handle_compcache \
    vendor/opendesire/prebuilt/bin/sysinit:system/bin/sysinit \
    vendor/opendesire/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/opendesire/prebuilt/etc/hosts:system/etc/hosts \
    vendor/opendesire/prebuilt/etc/init.d/00sysctl:system/etc/init.d/00sysctl \
    vendor/opendesire/prebuilt/etc/init.d/01modules:system/etc/init.d/01modules \
    vendor/opendesire/prebuilt/etc/init.d/10apps2sd:system/etc/init.d/10apps2sd \
    vendor/opendesire/prebuilt/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/opendesire/prebuilt/etc/init.local.rc:system/etc/init.local.rc \
    vendor/opendesire/prebuilt/etc/profile:system/etc/profile \
    vendor/opendesire/prebuilt/etc/resolv.conf:system/etc/resolv.conf \
    vendor/opendesire/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/opendesire/prebuilt/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/opendesire/prebuilt/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/opendesire/prebuilt/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

# Always run in insecure mode, enables root on user build variants
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0

ifdef OPENDESIRE_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
        vendor/opendesire/proprietary/CarHomeGoogle.apk:./system/app/CarHomeGoogle.apk \
        vendor/opendesire/proprietary/CarHomeLauncher.apk:./system/app/CarHomeLauncher.apk \
        vendor/opendesire/proprietary/com.google.android.maps.jar:./system/framework/com.google.android.maps.jar \
        vendor/opendesire/proprietary/com.google.android.maps.xml:./system/etc/permissions/com.google.android.maps.xml \
        vendor/opendesire/proprietary/features.xml:./system/etc/permissions/features.xml \
        vendor/opendesire/proprietary/Gmail.apk:./system/app/Gmail.apk \
        vendor/opendesire/proprietary/GoogleBackupTransport.apk:./system/app/GoogleBackupTransport.apk \
        vendor/opendesire/proprietary/GoogleCalendarSyncAdapter.apk:./system/app/GoogleCalendarSyncAdapter.apk \
        vendor/opendesire/proprietary/GoogleContactsSyncAdapter.apk:./system/app/GoogleContactsSyncAdapter.apk \
        vendor/opendesire/proprietary/GoogleFeedback.apk:./system/app/GoogleFeedback.apk \
        vendor/opendesire/proprietary/GooglePartnerSetup.apk:./system/app/GooglePartnerSetup.apk \
        vendor/opendesire/proprietary/GoogleQuickSearchBox.apk:./system/app/GoogleQuickSearchBox.apk \
        vendor/opendesire/proprietary/GoogleServicesFramework.apk:./system/app/GoogleServicesFramework.apk \
        vendor/opendesire/proprietary/HtcCopyright.apk:./system/app/HtcCopyright.apk \
        vendor/opendesire/proprietary/HtcEmailPolicy.apk:./system/app/HtcEmailPolicy.apk \
        vendor/opendesire/proprietary/HtcSettings.apk:./system/app/HtcSettings.apk \
        vendor/opendesire/proprietary/kickback.apk:./system/app/kickback.apk \
        vendor/opendesire/proprietary/LatinImeTutorial.apk:./system/app/LatinImeTutorial.apk \
        vendor/opendesire/proprietary/libspeech.so:./system/lib/libspeech.so \
        vendor/opendesire/proprietary/libvoicesearch.so:./system/lib/libvoicesearch.so \
        vendor/opendesire/proprietary/Maps.apk:./system/app/Maps.apk \
        vendor/opendesire/proprietary/MarketUpdater.apk:./system/app/MarketUpdater.apk \
        vendor/opendesire/proprietary/MediaUploader.apk:./system/app/MediaUploader.apk \
        vendor/opendesire/proprietary/NetworkLocation.apk:./system/app/NetworkLocation.apk \
        vendor/opendesire/proprietary/OneTimeInitializer.apk:./system/app/OneTimeInitializer.apk \
        vendor/opendesire/proprietary/PassionQuickOffice.apk:./system/app/PassionQuickOffice.apk \
        vendor/opendesire/proprietary/SetupWizard.apk:./system/app/SetupWizard.apk \
        vendor/opendesire/proprietary/soundback.apk:./system/app/soundback.apk \
        vendor/opendesire/proprietary/Talk.apk:./system/app/Talk.apk \
        vendor/opendesire/proprietary/talkback.apk:./system/app/talkback.apk \
        vendor/opendesire/proprietary/Vending.apk:./system/app/Vending.apk \
        vendor/opendesire/proprietary/VoiceSearch.apk:./system/app/VoiceSearch.apk \
        vendor/opendesire/proprietary/YouTube.apk:./system/app/YouTube.apk
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch
endif
