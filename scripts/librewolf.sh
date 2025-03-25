#!/bin/bash

# Enable Mozilla sync
echo "Enabling Mozilla sync..."
sudo sed -i 's/^defaultPref("identity\.fxaccounts\.enabled".*/defaultPref("identity.fxaccounts.enabled", true);/' /usr/lib/librewolf/librewolf.cfg

# Install LibreWolf extensions
echo "LibreWolf extensions require manual installation..."
echo "Opening LibreWolf extensions pages..."
xdg-open https://addons.mozilla.org/en-US/firefox/addon/firefox-color/
xdg-open https://addons.mozilla.org/en-US/firefox/addon/styl-us/
zenity --info --text="Click [OK] after installing the extensions." --title=".dotfiles setup - LibreWolf"

# Install LibreWolf themes
echo "LibreWolf themes require manual installation..."
echo "Opening LibreWolf themes pages..."
xdg-open https://color.firefox.com/?theme=XQAAAAJCBAAAAAAAAABBqYhm849SCicxcUcPX38oKRicm6da8pFtMcajvXaAE3RJ0F_F447xQs-L1kFlGgDKq4IIvWciiy4upusW7OvXIRinrLrwLvjXB37kvhN5ElayHo02fx3o8RrDShIhRpNiQMOdww5V2sCMLAfehho7r-tNa1SUtGS7I1CTZPy-PytvuYpnFiOqD91PyT5-oYf07MFNkQL1-mpkSfsafhS81iVCbahFQLTHZeroonPBnAGkaLJ2dRDLmW_ekCLmoty20NcEekV8xFQYv721-QIo9PeuYe33F-mNR9-0e-QMdtuksaYkOl_aH_NyI8RDM1HUiQCcd3StPLq3UyDaJhC_rhvlZWMMwDAuoHMI1RAnUbn3_KGbvErQEyBxxtEkWzHTed2xIpT8jcV1yQY9odOLm0ydbWlYpb-kUOoX_nF9hQq7Gf0ORYtSpGO_uA458GGCpImunZ68j-GfRy90T73zU1VU-sqA_YzfFoSZcZqLLa4UF-FMpwPQeeJR5w4GSti1briOisS9yTOAmYWfRpSbogOZzhEW2o-i8Fje__nq5cE
xdg-open https://catppuccin-userstyles-customizer.uncenter.dev/ 
zenity --info --text="uncenter.dev instructions\n\nSelect 'Latte', 'Mocha', 'Sky' and click download.\n\nAfter downloading, import the given import.json into the 'Stylus' extension." --title=".dotfiles setup - LibreWolf"