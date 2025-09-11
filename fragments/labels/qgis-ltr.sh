qgis-ltr)
    name="QGIS-LTR"
    type="dmg"
    dmgName="$(curl -fLs https://download.qgis.org/downloads/macos/ltr/ | grep -o "alt=.*.dmg\"" | grep -o "qgis.*dmg" | tail -1)"
    downloadURL="https://download.qgis.org/downloads/macos/ltr/${dmgName}"
    appNewVersion="$(echo "${dmgName}" | grep -oE "3_([0-9]+)_([0-9]+)" | sed 's/_/./g')"
    expectedTeamID="4F7N4UDA22"
    ;;
