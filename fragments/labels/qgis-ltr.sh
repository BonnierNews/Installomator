qgis-ltr)
    name="QGIS-LTR"
    type="dmg"
    downloadURL="$(curl -fs "https://qgis.org/download/" | grep -o "https://.*/qgis-macos-pr.dmg" | tail -1 | sed 's/macos-pr/macos-ltr/')"
    appNewVersion="$(curl -fs https://www.qgis.org/resources/roadmap/ | grep -oE "currently supported releases: [0-9]+\.[0-9]+(\.[0-9]+) and [0-9]+\.[0-9]+(\.[0-9]+)" | awk '{print$4}')"
    expectedTeamID="4F7N4UDA22"
    ;;
