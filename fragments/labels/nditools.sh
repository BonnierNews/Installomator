nditools)
    name="NDI Tools"
    type="pkg"
    appCustomVersion(){
      pkgutil --pkg-info com.newtek.NDI-Tools 2>/dev/null | grep "version:" | awk '{print$2}' | awk -F "." '{print$1"."$2"."$3}'
    }
    downloadURL=$(curl -sIkL $(curl -fsL https://ndi.video/tools/ | grep -E "get.ndi.video|MacOS" | grep -B 1 "MacOS" | grep -o '"https.*"' | sort | tail -1 | sed 's/"//g') | grep -o "https.*pkg")
    appNewVersion=$(curl -fsL https://ndi.video/tools/ | grep -o "Version [0-9].*[0-9]" | grep -o "[0-9].*[0-9]" | sort | tail -1)
    expectedTeamID="W8U66ET244"
    blockingProcesses=( "NDI Access Manager" "NDI Discovery" "NDI Launcher" "NDI Router" "NDI Scan Converter" "NDI Test Patterns" "NDI Video Monitor" "NDI Virtual Input" )
    ;;
