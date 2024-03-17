{ config, pkgs, ... }:
{
	imports = [ 
		./hyprland
		./kitty
		./rofi
		./theme.nix
		./misc.nix
	];
	home = {
		username = "tsssni";
		homeDirectory = "/home/tsssni";
		stateVersion = "23.11";
	};

	programs.home-manager.enable = true;
}
