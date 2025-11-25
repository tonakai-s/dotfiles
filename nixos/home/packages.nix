{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    ripgrep
    nil
    nixfmt-rfc-style
    nodejs
    git
    gcc
    waybar
  ];

}
