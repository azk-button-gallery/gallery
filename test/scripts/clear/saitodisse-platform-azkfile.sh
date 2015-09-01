
echo ""
echo " - cleaning saitodisse/platform#azkfile..."

echo "   $ cd /tmp/buttons/platform folder"
cd /tmp/buttons/platform

echo " - stoping systems..."
echo "   $ azk stop"
azk stop

echo " - removing any persistent/sync folders..."
azk info | grep -e "\(sync_folders\|persistent_folders\)" | awk -F ":" "{ print $2 }" | sed "s/.*\(persistent_folders\|sync_folders\)\/\(\w\+\).*/\2/g" | tail -n 1 | xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR

echo " - removing old project folder if exists..."
cd /tmp/buttons
sudo rm -rf /tmp/buttons/platform