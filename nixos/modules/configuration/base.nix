{ ... }:

{
    imports = [
        ./boot.nix
        ./fonts.nix
        ./renas.nix

        ./programs/firefox.nix
        ./programs/niri.nix
        ./programs/zsh.nix

        ./services/dnsmasq.nix
        ./services/ly.nix
        ./services/pipewire.nix
        ./services/udev.nix
        ./services/xserver
        ./services/dbus.nix
        
        ./system/packages.nix
    ];

    nixpkgs.config.allowUnfree = true;
}
