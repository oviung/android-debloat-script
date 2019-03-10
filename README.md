This is an edited version of [jajb](http://forum.xda-developers.com/member.php?u=5772029)'s script found in [this thread](http://forum.xda-developers.com/android/software/gapps-google-apps-minimal-edition-t2943330).

## Note!

After a fresh install of a ROM, first do a system boot before installing this script. This removes apps that are called on first startup (for configuring some system settings), so flashing the script before doing so will result in a bootloop.

Also, to avoid a bootloop caused by the removal of Velvet.apk, go to `Settings > Apps > Default apps > Assist & voice input` and make sure it's set to `none`. Or edit the script to keep Velvet.

## List of removed apps

* AndroidMigratePrebuilt
* AntHalService (used for activity trackers, heart rate monitors etc.)
* Apollo
* AudioFX
* BasicDreams
* BookmarkProvider (used to import/export bookmarks)
* Browser (AOSP)
* BuiltInPrintService
* CellBroadcastReceiver
* CMAccout
* CMAudioService
* CMFileManager
* CMHome
* CMUpdater
* CMWallpapers
* CyanogenSetupWizard
* DashClock
* DocumentsUI (LineageOS File Manager, alt. [MiXplorer](https://forum.xda-developers.com/showthread.php?t=1523691))
* DownloadProviderUi
* DSPManager
* EasterEgg
* Eleven (music player)
* EmergencyInfo
* Email
* ExactCalculator
* Exchange2 (Exchange Services)
* Galaxy4
* Gallery2 (gallery app)
* GalleryNext (yet another gallery app)
* Gello (Cyanogen browser)
* GoogleTTS
* HexoLibre
* HoloSpiralWallpaper
* Jelly (LineageOS browser)
* LineageSetupWizard
* LiveLockScreenService
* LiveWallpapers
* LiveWallpapersPicker
* LockClock (cLock)
* MagicSmokeWallpapers
* ManagedProvisioning (Device administration for corporate environments)
* MarkupGoogle (Screenshot Editor)
* ModioFX (audio effects - use Viper4Android/[ARISE](https://forum.xda-developers.com/android/software/r-s-e-sound-systems-auditory-research-t3379709) if rooted)
* Music (player)
* NoiseField
* OmniSwitch
* OTAUpdater
* OpenWeatherMapWeatherProvider
* PartnerBookmarksProvider
* PhaseBeam
* PhotoPhase
* PhotoTable
* PitchBlack (Resurrection Remix theme)
* PrebuiltExchange3Google
* PrintRecommendationService
* PrintSpooler
* Provision
* qcrilmsgtunnel
* QuickSearchBox
* Recorder
* RRWallpapers
* Screencast
* ScreenRecorder
* SetupWizard
* SoundRecorder
* Talkback
* Terminal
* ThemeChooser
* ThemeManagerService
* ThemesProvider
* Updater
* Velvet (Google App)
* Vending
* VideoEditor
* VisualizationWallpapers
* VoicePlus
* WallpaperBackup
* WeatherManagerService
* WeatherProvider
* WhisperPush
* WundergroundWeatherProvider
* YahooWeatherProvider

## Other removed directories/files

```
/system/media/audio/ringtones

/sdcard/Alarms
/sdcard/Notifications
/sdcard/Podcasts
```
