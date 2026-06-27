{
  pkgs,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/configuration/base.nix
    ../../modules/configuration/gaming.nix
    ../../modules/configuration/services/xserver/display.manager.husky.nix
  ];

  networking.hostName = "desktop";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  networking.nameservers = [
    "127.0.0.1"
    "192.168.56.10"
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.05";

  boot.kernelPackages = pkgs.linuxPackages_latest;
}
