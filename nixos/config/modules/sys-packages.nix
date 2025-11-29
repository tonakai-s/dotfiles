{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    wget
    fuzzel
    pavucontrol
    protonup-qt
    swaybg
    bibata-cursors
    vial
    popsicle
    pciutils
    teamspeak_client
    fastfetch
    nixd
    discord
    lua-language-server
  ];
}
