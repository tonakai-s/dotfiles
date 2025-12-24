{ pkgs, ... }:

{
    imports = [
        ./xdg.config.nix
        ./starship.nix
        ./zsh.nix
        ./kitty.nix
        ./bash.nix
    ];

    home.packages = with pkgs; [
        neovim
        ripgrep
        nil
        nixfmt-rfc-style
        nodejs
        git
        gcc
        tmux
        waybar
    ];

    home.username = "renas";
    home.homeDirectory = "/home/renas";
    home.stateVersion = "25.05";
}
