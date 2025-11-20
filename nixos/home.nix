{ config, pkgs, ... }:

let
	dotfiles = "${config.home.homeDirectory}/workspace/dotfiles";
	create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
	home.username = "renas";
	home.homeDirectory = "/home/renas";
	programs.git.enable = true;
	home.stateVersion = "25.05";
	programs.bash = {
		enable = true;
		shellAliases = {
			btw = "echo I use Nixos, btw";
			ll = "ls -lah";
		};
	};
	programs.zsh = {
		enable = true;
		shellAliases = {
			btw = "echo I use Nixos, btw";
			ll = "ls -lah";
		};
		initContent = ''
			eval "$(starship init zsh)"
		'';
	};

	programs.kitty = {
		enable = true;
		extraConfig = ''
			background_opacity 0.5
			confirm_os_window_close -1
			cursor_shape block
			shell_integration no-cursor
		'';
	};
	programs.waybar.enable = true;

	programs.starship = {
		enable = true;
		settings = {
			add_newline = true;
			character = {
				format = "$symbol";
				success_symbol = "[➜ ](bold green)";
				error_symbol = "[➜ ](bold red)";
			};
		};
	};

	xdg.configFile."waybar" = {
		source = create_symlink "${dotfiles}/waybar/";
		recursive = true;
	};
}
