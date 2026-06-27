{ pkgs, ... }:

{
  imports = [
    ./hardware/graphics.nix
    ./programs/steam.nix
    ./programs/xwayland.nix
    ./services/upower.nix
    ./services/xserver/video.drivers.nix
  ];

  environment.systemPackages = with pkgs; [
    protonup-qt
    protonplus
  ];

  users.users.renas = {
    packages = with pkgs; [
      xwayland-satellite
      protontricks
    ];
  };

  boot.kernelModules = [ "ntsync" ];
}
