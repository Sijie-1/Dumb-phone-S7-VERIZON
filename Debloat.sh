#!/bin/bash

LOGFILE="log.txt"
> "$LOGFILE"  # Borra el contenido anterior del log

# Lista de paquetes (agrega los que necesites)
packages=(
com.android.backupconfirm
com.android.contacts
com.android.htmlviewer
com.android.managedprovisioning
com.android.pacprocessor
com.android.providers.userdictionary
com.android.proxyhandler
com.android.sharedstoragebackup
com.android.wallpaper.livepicker
com.android.wallpapercropper
com.google.android.webview
com.osp.app.signin
com.qualcomm.atfwd
com.qualcomm.embms
com.samsung.android.app.filterinstaller
com.samsung.android.app.interactivepanoramaviewer
com.samsung.android.app.motionpanoramaviewer
com.samsung.android.app.simplesharing
com.samsung.android.intelligenceservice2
com.samsung.android.smartcallprovider
com.samsung.android.themestore
com.samsung.android.universalswitch
com.samsung.safetyinformation
com.samsung.sec.android.application.csc
com.samsung.ucs.agent.boot
com.samsung.vvm
com.sec.android.RilServiceModeApp
com.sec.android.app.SecSetupWizard
com.sec.android.app.apex
com.sec.android.app.applinker
com.sec.android.app.samsungapps
com.sec.android.app.servicemodeapp
com.sec.android.easyonehand
com.sec.android.emergencylauncher
com.sec.android.gallery3d.panorama360view
com.sec.android.provider.badge
com.sec.android.splitsound
com.sec.android.wallpapercropper2
com.sec.bcservice
com.sec.hiddenmenu
com.sec.location.nsflp2
com.sec.sve
com.sec.usbsettings
com.wssnps
com.samsung.clipboardsaveservice
com.samsung.android.gamepad.service
com.ipsec.service
com.samsung.android.nearby.mediaserver
com.android.nfc
com.samsung.android.qconnect
com.samsung.android.SettingsReceiver
com.sec.android.app.tourviewer
com.sec.vowifispg
com.sec.automation
com.samsung.syncmlservice
com.samsung.spg
com.samsung.carrier.logcollector
com.sec.android.app.filtermanager
com.samsung.app.slowmotion
com.samsung.imagecompress
com.samsung.dcmservice
com.samsung.android.fingerprint.service
com.samsung.vzw.huxhtmlviewer
)

for i in "${packages[@]}"; do
    adb shell pm uninstall --user 0 "$i" >> "$LOGFILE" 2>&1
    if grep -q "Success" <<< "$(tail -n 1 "$LOGFILE")"; then
        echo "✔️: $i" | tee -a "$LOGFILE"
    else
        echo "❌: $i" | tee -a "$LOGFILE"
    fi
    echo " " >> "$LOGFILE"
done