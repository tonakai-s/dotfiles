{ config, pkgs, ... }:

{
    home.username = "renas";
    home.homeDirectory = "/home/renas";
	programs.git.enable = true;
	home.stateVersion = "25.05";
	programs.bash = {
		enable = true;
		shellAliases = {
			btw = "echo I use Nixos, btw";
		};
	};
}
