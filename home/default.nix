{ config, pkgs, ... }:
{
	imports = [ 
		./bash
		./kitty
		./eww
		./hyprland
		./rofi
		./dunst
		./fcitx5
		./theme.nix
		./misc.nix
	];
	home = {
		username = "tsssni";
		homeDirectory = "/home/tsssni";
		packages = with pkgs; [
			# programming
			python3
			blesh
			# wallpaper
			swww
			# bar
			eww
			# media
			playerctl
			imagemagick
			# volume
			wireplumber
			# brightness
			brightnessctl
			# bluetooth
			bluez
			# polkit
			polkit
			polkit_gnome
			# font
			noto-fonts
			noto-fonts-cjk
			noto-fonts-emoji
			(nerdfonts.override { fonts = [ "Monaspace" ]; })
			# misc
			dconf
			dmenu
			xdg-utils
			xdg-user-dirs
		];
		stateVersion = "23.11";
	};

	programs.home-manager.enable = true;
}