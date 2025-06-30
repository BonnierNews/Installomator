insta360studio)
    name="Insta360 Studio"
    type="pkg"
    latestVersion="$(curl -fs https://www.insta360.com/download/insta360-x5 | grep -o "<script id=\"__NEXT_DATA__\" type=\"application/json\">.*</script>" | sed 's|<script id="__NEXT_DATA__" type="application/json">||' | sed 's|</script>||' | jq -r '.props.pageProps.rawData.[]|select(.main_name=="Insta360 STUDIO")|.items.[]|select(.platform=="mac")|"\(.version) \(.channels.[].download_url)"' | sort | tail -1)"
    appNewVersion=$(echo $latestVersion | awk '{print$1}')
    downloadURL=$(echo $latestVersion | awk '{print$2}')
    expectedTeamID="UBX9CH9GDX"
    ;;
