{ pkgs, ... }:

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
    ];
}
