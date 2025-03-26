#!/bin/bash

# Enable Mozilla sync
echo "Enabling Mozilla sync..."
sudo sed -i 's/^defaultPref("identity\.fxaccounts\.enabled".*/defaultPref("identity.fxaccounts.enabled", true);/' /usr/lib/librewolf/librewolf.cfg

# Install LibreWolf extensions
echo '' && echo ''
echo "LibreWolf extensions require manual installation..."
echo ''
echo "Opening LibreWolf extensions pages..."
echo ''
echo 'Opening Firefox Color extension page...'
echo "Waiting for user to install Firefox Color extension and close window..."
xdg-open https://addons.mozilla.org/en-US/firefox/addon/firefox-color/
echo ''
echo 'Opening Stylus extension page'
echo "Waiting for user to install Stylus extension and close window..."
xdg-open https://addons.mozilla.org/en-US/firefox/addon/styl-us/

# Install LibreWolf themes
echo '' && echo ''
echo "LibreWolf themes require manual installation..."
echo ''
echo "Opening LibreWolf themes pages..."
echo ''
echo 'Opening Firefox Color theme page...'
echo "Waiting for user to install Firefox Color theme and close window..."
xdg-open https://color.firefox.com/?theme=XQAAAAJCBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pFtMcajvXaAE3RJ0F_F447xQs-L1kFlGgDKq4IIvWciiy4upusW7OvXIRinrLrwLvjXB37kvhN5ElayHo02fx3o8RrDShIhRpNiQMOdww5V2sCMLAfehho7r-tNa1SUtGS7I1CTZPy-PytvuYpnFiOqD91PyT5-oYf07MFNkQL1-mpkSfsafhS81iVCbahFQLTHZeroonPBnAGkaLJ2dRDLmW_ekCLmoty20NcEekV8xFQYv721-QIo9PeuYe33F-mNR9-0e-QMdtuksaYkOl_aH_NyI8RDM1HUiQCcd3StPLq3UyDaJhC_rhvlZWMMwDAuoHMI1RAnUbn3_KGbvErQEyBxxtEkWzHTed2xIpT8jcV1yQY9odOLm0ydbWlYpb-kUOoX_nF9hQq7Gf0ORYtSpGO_uA458GGCpImunZ68j-GfRy90T73zU1VU-sqA_YzfFoSZcZqLLa4UF-FMpwPQeeJR5w4GSti1briOisS9yTOAmYWfRpSbogOZzhEW2o-i8Fje__nq5cE
echo ''
echo "Select 'Mocha', 'Mocha', 'Sky' and click download."
echo 'After downloading, import the given import.json into the "Stylus" extension.'
echo ''
echo "Opening Stylus extension page..."
echo "Waiting for user to install Stylus theme and close window..."
xdg-open https://catppuccin-userstyles-customizer.uncenter.dev/ 