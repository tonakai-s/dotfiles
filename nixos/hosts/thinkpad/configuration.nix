{
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/configuration/base.nix
    ../../modules/configuration/bluetooth.nix
  ];

  networking.hostName = "thinkpad";
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";

  networking.nameservers = [ "127.0.0.1" ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  system.stateVersion = "25.05";
}
