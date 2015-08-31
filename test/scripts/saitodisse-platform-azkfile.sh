
echo ""
echo ""
echo ""
echo ""
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo " saitodisse/platform#azkfile"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

echo ""
echo "cd /tmp/buttons/platform folder"
cd /tmp/buttons/platform

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  $ azk stop"
echo " +++++++++++++++++++++++++++"
azk stop

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing any persistent/sync folders..."
echo " +++++++++++++++++++++++++++"
azk info |
  grep -e "(sync_folders|persistent_folders)" |
  awk -F ":" "{ print $2 }" |
  sed "s/.*(persistent_folders|sync_folders)/(w+).*/\2/g" |
  tail -n 1 |
  xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing old project folder if exists..."
echo " +++++++++++++++++++++++++++"
cd /tmp/buttons
sudo rm -rf /tmp/buttons/platform

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  restarting with reprovision..."
echo " +++++++++++++++++++++++++++"
azk start -Rovv saitodisse/platform#azkfile /tmp/buttons/platform
echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  AFTER TEST CLEANNING saitodisse/platform#azkfile"
echo " +++++++++++++++++++++++++++"

echo ""
echo "cd /tmp/buttons/platform folder"
cd /tmp/buttons/platform

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  $ azk stop"
echo " +++++++++++++++++++++++++++"
azk stop

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing any persistent/sync folders..."
echo " +++++++++++++++++++++++++++"
azk info |
  grep -e "(sync_folders|persistent_folders)" |
  awk -F ":" "{ print $2 }" |
  sed "s/.*(persistent_folders|sync_folders)/(w+).*/\2/g" |
  tail -n 1 |
  xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing old project folder if exists..."
echo " +++++++++++++++++++++++++++"
cd /tmp/buttons
sudo rm -rf /tmp/buttons/platform



echo ""
echo ""
echo ""
echo ""
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo " saitodisse/platform#azkfile"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
echo "-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

echo ""
echo "cd /tmp/buttons/platform folder"
cd /tmp/buttons/platform

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  $ azk stop"
echo " +++++++++++++++++++++++++++"
azk stop

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing any persistent/sync folders..."
echo " +++++++++++++++++++++++++++"
azk info |
  grep -e "(sync_folders|persistent_folders)" |
  awk -F ":" "{ print $2 }" |
  sed "s/.*(persistent_folders|sync_folders)/(w+).*/\2/g" |
  tail -n 1 |
  xargs -n 1 -I VARR sudo rm -rf ~/.azk/data/sync_folders/VARR ~/.azk/data/persistent_folders/VARR

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  removing old project folder if exists..."
echo " +++++++++++++++++++++++++++"
cd /tmp/buttons
sudo rm -rf /tmp/buttons/platform

echo ""
echo ""
echo " +++++++++++++++++++++++++++"
echo "  restarting with reprovision..."
echo " +++++++++++++++++++++++++++"
azk start -Rovv saitodisse/platform#azkfile /tmp/buttons/platform
