## Desktop Environment

hyprland : copr - sdegler/hyprland
    waypaper
		hyprpaper
    hyprshot
	hyprpolkitagent
	uwsm
	xdg-desktop-portal-hyprland
		xdg-utils
    wayle : https://github.com/wayle-rs/wayle#install // replace hyprpanel
	catppuccin-cursors : https://github.com/catppuccin/cursors#github-release
	hyprshutdown
vicinae : copr - quadratech188/vicinae

### KDE
plasma-systemsettings
	bluedevil
	colord-kde
	kde-gtk-config
	pinentry-qt
kwalletmanager5
	pam-kwallet
	ksshaskpass
dolphin
	ffmpegthumbs
	kdegraphics-thumbnailers
	kio-admin
	kf6-baloo-file
kvantum
	qt6-qtwayland
kinfocenter
plasma-pa // replaces pavucontrol
kde-partitionmanager // replace gparted
	smartmontools
	nfs-utils
	qdirstat
ark
	7zip
plasma-nm
	iwd
plasma-systemmonitor // replace btop

### Pre-Desktop
sddm
    sddm-conf
    sddm-wayland-miriway
    qylock : https://github.com/Darkkal44/qylock#-installation
plymouth

## Development

git
	gh
code
pre-commit
neovim
python3.13
uv
ruby-devel
	! jekyll
adoptium-temurin-java-repository
	temurin-17-jdk
	temurin-21-temurin
docker-ce
	docker-ce-cli
	docker-compose-plugin

## Gaming

steam
	millenium : `curl -fsSL "https://steambrew.app/install.sh" | bash`
prismlauncher : copr - g3tchoo/prismlauncher
	blockbench : manual?
heroic-games-launcher-bin : copr - atim/heroic-games-launcher
wine

## Social

discord : rpmfusion nonfree
	betterdiscordctl : copr - observeroftime/betterdiscordctl
telegram-desktop : rpmfusion free

## Internet And Media

firefox
gimp
	imagemagick
	upscayl : https://github.com/upscayl/upscayl/releases/download/v2.15.0/upscayl-2.15.0-linux.rpm
vlc

## Utilities And System

grub
	os-prober

openssh
	sshpass
	fuse-sshfs

ghostty : copr - scottames/ghostty
	zsh
	fzf
	eza
	starship : `curl -sS https://starship.rs/install.sh | sh`
	thefuck
	bat
	fastfetch
	wget2

!fonts
	* Ubuntu NerdFont
	google-noto-emoji-fonts