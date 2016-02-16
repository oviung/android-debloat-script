#!/sbin/sh
#
# /system/addon.d/74-brs.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF

EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
   rm -rf /system/app/Apollo
   rm -f /system/app/Apollo/Apollo.apk
   rm -rf /system/app/BasicDreams
   rm -f /system/app/BasicDreams/BasicDreams.apk
   rm -rf /system/app/Browser
   rm -f /system/app/Browser/Browser.apk
   rm -rf /system/app/CellBroadcastReceiver
   rm -f /system/app/CellBroadcastReceiver/CellBroadcastReceiver.apk
   rm -rf /system/app/CMFileManager
   rm -f /system/app/CMFileManager/CMFileManager.apk
   rm -rf /system/app/CMHome
   rm -f /system/app/CMHome/CMHome.apk
   rm -rf /system/app/CMWallpapers
   rm -f /system/app/CMWallpapers/CMWallpapers.apk
   rm -rf /system/app/DashClock
   rm -f /system/app/DashClock/DashClock.apk
   rm -rf /system/app/DSPManager
   rm -f /system/app/DSPManager/DSPManager.apk
   rm -rf /system/app/Eleven
   rm -f /system/app/Eleven/Eleven.apk
   rm -rf /system/app/Email
   rm -f /system/app/Email/Email.apk
   rm -rf /system/app/Exchange2
   rm -f /system/app/Exchange2/Exchange2.apk
   rm -rf /system/app/Galaxy4
   rm -f /system/app/Galaxy4/Galaxy4.apk
   rm -rf /system/app/Gallery2
   rm -f /system/app/Gallery2/Gallery2.apk
   rm -rf /system/app/HoloSpiralWallpaper
   rm -f /system/app/HoloSpiralWallpaper/HoloSpiralWallpaper.apk
   rm -rf /system/app/LiveWallpapers
   rm -f /system/app/LiveWallpapers/LiveWallpapers.apk
   rm -rf /system/app/LiveWallpapersPicker
   rm -f /system/app/LiveWallpapersPicker/LiveWallpapersPicker.apk
   rm -rf /system/app/LockClock
   rm -f /system/app/LockClock/LockClock.apk
   rm -rf /system/app/MagicSmokeWallpapers
   rm -f /system/app/MagicSmokeWallpapers/MagicSmokeWallpapers.apk
   rm -rf /system/app/Music
   rm -f /system/app/Music/Music.apk
   rm -rf /system/app/NoiseField
   rm -f /system/app/NoiseField/NoiseField.apk
   rm -rf /system/app/PartnerBookmarksProvider
   rm -f /system/app/PartnerBookmarksProvider/PartnerBookmarksProvider.apk
   rm -rf /system/app/PhaseBeam
   rm -f /system/app/PhaseBeam/PhaseBeam.apk
   rm -rf /system/app/PhotoPhase
   rm -f /system/app/PhotoPhase/PhotoPhase.apk
   rm -rf /system/app/PhotoTable
   rm -f /system/app/PhotoTable/PhotoTable.apk
   rm -rf /system/app/PrintSpooler
   rm -f /system/app/PrintSpooler/PrintSpooler.apk
   rm -rf /system/app/Provision
   rm -f /system/app/Provision/Provision.apk
   rm -rf /system/app/QuickSearchBox
   rm -f /system/app/QuickSearchBox/QuickSearchBox.apk
   rm -rf /system/app/RRWallpapers
   rm -f /system/app/RRWallpapers/RRWallpapers.apk
   rm -rf /system/app/SoundRecorder
   rm -f /system/app/SoundRecorder/SoundRecorder.apk
   rm -rf /system/app/Stk
   rm -f /system/app/Stk/Stk.apk
   rm -rf /system/app/Terminal
   rm -f /system/app/Terminal/Terminal.apk
   rm -rf /system/app/Vending
   rm -f /system/app/Vending/Vending.apk
   rm -rf /system/app/VideoEditor
   rm -f /system/app/VideoEditor/VideoEditor.apk
   rm -rf /system/app/VisualizationWallpapers
   rm -f /system/app/VisualizationWallpapers/VisualizationWallpapers.apk
   rm -rf /system/app/VoicePlus
   rm -f /system/app/VoicePlus/VoicePlus.apk
   rm -rf /system/app/WhisperPush
   rm -f /system/app/WhisperPush/WhisperPush.apk

   rm -rf /system/priv-app/AudioFX
   rm -f /system/priv-app/AudioFX/AudioFX.apk
   rm -rf /system/priv-app/CellBroadcastReceiver
   rm -f /system/priv-app/CellBroadcastReceiver/CellBroadcastReceiver.apk
   rm -rf /system/priv-app/CMAccount
   rm -f /system/priv-app/CMAccount/CMAccout.apk
   rm -rf /system/priv-app/CMUpdater
   rm -f /system/priv-app/CMUpdater/CMUpdater.apk
   rm -rf /system/priv-app/CyanogenSetupWizard
   rm -f /system/priv-app/CyanogenSetupWizard/CyanogenSetupWizard.apk
   rm -rf /system/priv-app/OmniSwitch
   rm -f /system/priv-app/OmniSwitch/OmniSwitch.apk
   rm -rf /system/priv-app/OneTimeInitializer
   rm -f /system/priv-app/OneTimeInitializer/OneTimeInitializer.apk
   rm -rf /system/priv-app/OTAUpdates
   rm -f /system/priv-app/OTAUpdates/OTAUpdates.apk
   rm -rf /system/priv-app/PartnerBookmarksProvider
   rm -f /system/priv-app/PartnerBookmarksProvider/PartnerBookmarksProvider.apk
   rm -rf /system/priv-app/PitchBlack
   rm -f /system/priv-app/Provision/com.resurrectionremix.pitchblack.apk
   rm -rf /system/priv-app/Provision
   rm -f /system/priv-app/Provision/Provision.apk
   rm -rf /system/priv-app/QuickSearchBox
   rm -f /system/priv-app/QuickSearchBox/QuickSearchBox.apk
   rm -rf /system/priv-app/ScreenRecorder
   rm -f /system/priv-app/ScreenRecorder/ScreenRecorder.apk
   rm -rf /system/priv-app/talkback
   rm -f /system/priv-app/talkback/talkback.apk
   rm -rf /system/priv-app/ThemeChooser
   rm -f /system/priv-app/ThemeChooser/ThemeChooser.apk
   rm -rf /system/priv-app/ThemesProvider
   rm -f /system/priv-app/ThemesProvider/ThemesProvider.apk
   rm -rf /system/priv-app/Vending
   rm -f /system/priv-app/Vending/Vending.apk

   rm -rf /system/media/audio/notifications
   rm -rf /system/media/audio/ringtones
   rm -rf /system/media/audio/ui
   rm -rf /sdcard/Alarms
   rm -rf /sdcard/Notifications
   rm -rf /sdcard/Podcasts
   rm -rf /sdcard/Ringtones
  ;;
esac
