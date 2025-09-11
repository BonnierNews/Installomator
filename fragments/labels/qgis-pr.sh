qgis-pr)
    name="QGIS"
    type="dmg"
    dmgName="$(curl -fLs https://download.qgis.org/downloads/macos/pr/ | grep -o "alt=.*.dmg\"" | grep -o "qgis.*dmg" | tail -1)"
    downloadURL="https://download.qgis.org/downloads/macos/pr/${dmgName}"
    appNewVersion="$(echo "${dmgName}" | grep -oE "3_([0-9]+)_([0-9]+)" | sed 's/_/./g')"
    expectedTeamID="4F7N4UDA22"
    ;;
