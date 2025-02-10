topazgigapixel|\
topazgigapixelai)
    name="Topaz Gigapixel AI"
    type="pkg"
    appNewVersion=$(curl -fs https://community.topazlabs.com/c/gigapixel-ai/gigapixel-ai/66 | grep -o "raw-topic-link'>.*<" | grep -o "v.*<" | sed -E 's/[v|<]//g' | head -1)
    downloadURL="https://downloads.topazlabs.com/deploy/TopazGigapixelAI/${appNewVersion}/TopazGigapixelAI-${appNewVersion}.pkg"
    archiveName="TopazGigapixelAI-${appNewVersion}.pkg"
    expectedTeamID="3G3JE37ZHF"
    ;;
