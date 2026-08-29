{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    curl
    wget
    fuzzel
    pavucontrol
    swaybg
    bibata-cursors
    vial
    popsicle
    pciutils
    fastfetch
    unrar
    unzip
    obsidian
    nautilus
    htop
    nixd
    blender
    gdb
    gimp
    valgrind
    bubblewrap
    vlc
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
    libreoffice
    shotcut
    man-pages
    gnumake
    qbittorrent
    vlc
  ];
}
