#!/bin/bash
silent=$1
spin=$2

# Run once to prevent single-window issue
echo -e "\033[0;34mRunning LibreWolf to prevent single-window issue...\033[0m"
librewolf > /dev/null 2>&1 &
sleep 2s && pkill librewolf

# Install LibreWolf extensions
echo -e "\033[0;31mLibreWolf extensions require manual installation..."
echo -e "\n\033[0;34mOpening LibreWolf extensions pages..."
echo -e "\033[0mOpening Firefox Color extension page..."
xdg-open https://addons.mozilla.org/en-US/firefox/addon/firefox-color/
echo -e "\033[0mOpening Stylus extension page"
xdg-open https://addons.mozilla.org/en-US/firefox/addon/styl-us/
echo -e "\n\033[0;34mOpening LibreWolf themes pages..."
echo -e "\033[0mOpening Firefox Color theme page..."
xdg-open https://color.firefox.com/?theme=XQAAAAJCBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pFtMcajvXaAE3RJ0F_F447xQs-L1kFlGgDKq4IIvWciiy4upusW7OvXIRinrLrwLvjXB37kvhN5ElayHo02fx3o8RrDShIhRpNiQMOdww5V2sCMLAfehho7r-tNa1SUtGS7I1CTZPy-PytvuYpnFiOqD91PyT5-oYf07MFNkQL1-mpkSfsafhS81iVCbahFQLTHZeroonPBnAGkaLJ2dRDLmW_ekCLmoty20NcEekV8xFQYv721-QIo9PeuYe33F-mNR9-0e-QMdtuksaYkOl_aH_NyI8RDM1HUiQCcd3StPLq3UyDaJhC_rhvlZWMMwDAuoHMI1RAnUbn3_KGbvErQEyBxxtEkWzHTed2xIpT8jcV1yQY9odOLm0ydbWlYpb-kUOoX_nF9hQq7Gf0ORYtSpGO_uA458GGCpImunZ68j-GfRy90T73zU1VU-sqA_YzfFoSZcZqLLa4UF-FMpwPQeeJR5w4GSti1briOisS9yTOAmYWfRpSbogOZzhEW2o-i8Fje__nq5cE
echo -e "\033[0mOpening Stylus theme page..."
echo -e "\n\033[0mSelect 'Mocha', 'Mocha', 'Sky' and click download."
echo -e "\n\033[0mAfter downloading, import the given import.json into the 'Stylus' extension."
xdg-open https://catppuccin-userstyles-customizer.uncenter.dev/
echo -e "\n\033[0;34mWaiting for user to install extensions and themes and close window..."

while pgrep -x "librewolf" > /dev/null; do
    for i in {0..3}; do
        printf "\r\033[0;36m\033[KWaiting for LibreWolf to close... ${spin:$i:1}"
        sleep 0.2
    done
done
printf "\r\033[0;32m\033[KLibreWolf has been closed. Continuing...\033[0m\n"