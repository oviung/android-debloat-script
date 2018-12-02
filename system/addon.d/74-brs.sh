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
   rm -rf /system/app/AntHalService
   rm -rf /system/app/Apollo
   rm -rf /system/app/BasicDreams
   rm -rf /system/app/BookmarkProvider
   rm -rf /system/app/Browser
   rm -rf /system/app/CellBroadcastReceiver
   rm -rf /system/app/CMFileManager
   rm -rf /system/app/CMHome
   rm -rf /system/app/CMWallpapers
   rm -rf /system/app/DashClock
   rm -rf /system/app/DownloadProviderUi
   rm -rf /system/app/DSPManager
   rm -rf /system/app/EasterEgg
   rm -rf /system/app/Eleven
   rm -rf /system/app/Email
   rm -rf /system/app/ExactCalculator
   rm -rf /system/app/Exchange2
   rm -rf /system/app/Galaxy4
   rm -rf /system/app/Gallery2
   rm -rf /system/app/GalleryNext
   rm -rf /system/app/Gello
   rm -rf /system/app/GoogleTTS
   rm -rf /system/app/HexoLibre
   rm -rf /system/app/HoloSpiralWallpaper
   rm -rf /system/app/Jelly
   rm -rf /system/app/LiveWallpapers
   rm -rf /system/app/LiveWallpapersPicker
   rm -rf /system/app/LockClock
   rm -rf /system/app/MagicSmokeWallpapers
   rm -rf /system/app/ModioFX
   rm -rf /system/app/Music
   rm -rf /system/app/NoiseField
   rm -rf /system/app/OpenWeatherMapWeatherProvider
   rm -rf /system/app/PartnerBookmarksProvider
   rm -rf /system/app/PhaseBeam
   rm -rf /system/app/PhotoPhase
   rm -rf /system/app/PhotoTable
   rm -rf /system/app/PrintRecommendationService
   rm -rf /system/app/PrintSpooler
   rm -rf /system/app/Provision
   rm -rf /system/app/QuickSearchBox
   rm -rf /system/app/RRWallpapers
   rm -rf /system/app/SoundRecorder
   rm -rf /system/app/Terminal
   rm -rf /system/app/Vending
   rm -rf /system/app/VideoEditor
   rm -rf /system/app/VisualizationWallpapers
   rm -rf /system/app/VoicePlus
   rm -rf /system/app/WallpaperBackup
   rm -rf /system/app/WhisperPush
   rm -rf /system/app/WundergroundWeatherProvider
   rm -rf /system/app/YahooWeatherProvider

   rm -rf /system/priv-app/AudioFX
   rm -rf /system/priv-app/CellBroadcastReceiver
   rm -rf /system/priv-app/CMAccount
   rm -rf /system/priv-app/CMAudioService
   rm -rf /system/priv-app/CMUpdater
   rm -rf /system/priv-app/CyanogenSetupWizard
   rm -rf /system/priv-app/DocumentsUI
   rm -rf /system/priv-app/Eleven
   rm -rf /system/priv-app/EmergencyInfo
   rm -rf /system/priv-app/LineageSetupWizard
   rm -rf /system/priv-app/LiveLockScreenService
   rm -rf /system/priv-app/ManagedProvisioning
   rm -rf /system/priv-app/OmniSwitch
   rm -rf /system/priv-app/OTAUpdates
   rm -rf /system/priv-app/PartnerBookmarksProvider
   rm -rf /system/priv-app/PitchBlack
   rm -rf /system/priv-app/Provision
   rm -rf /system/priv-app/qcrilmsgtunnel
   rm -rf /system/priv-app/QuickSearchBox
   rm -rf /system/priv-app/Recorder
   rm -rf /system/priv-app/Screencast
   rm -rf /system/priv-app/ScreenRecorder
   rm -rf /system/priv-app/SetupWizard
   rm -rf /system/priv-app/talkback
   rm -rf /system/priv-app/ThemeChooser
   rm -rf /system/priv-app/ThemeManagerService
   rm -rf /system/priv-app/ThemesProvider
   rm -rf /system/priv-app/Updater
   rm -rf /system/priv-app/Vending
   rm -rf /system/priv-app/WeatherManagerService
   rm -rf /system/priv-app/WeatherProvider

   rm -rf /system/media/audio/notifications
   rm -rf /system/media/audio/ringtones
   rm -rf /system/media/audio/ui
   rm -rf /sdcard/Alarms
   rm -rf /sdcard/Notifications
   rm -rf /sdcard/Podcasts
   rm -rf /sdcard/Ringtones
  ;;
esac
