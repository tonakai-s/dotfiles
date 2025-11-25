{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    windowManager.qtile.enable = true;
  };
  services.displayManager.ly.enable = true;
  services.xserver.displayManager.setupCommands = ''
    xrandr --output DP-0 --primary --mode 3440x1440 --rate 144.00
  '';
  services.udev.packages = [
    (pkgs.writeTextFile {
      name = "vial-kb-rule";
      destination = "/lib/udev/rules.d/59-vial.rules";
      text = ''KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{serial}=="*vial:f64c2b3c*", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"'';
    })
  ];
  services.xserver.videoDrivers = [ "nvidia" ];
  nixpkgs.config.allowUnfree = true;

  services = {
    upower.enable = true;
    udisks2.enable = true;
    dbus.enable = true;
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.dnsmasq = {
    enable = true;

    settings = {
      # Upstream DNS providers
      server = [
        "1.1.1.1"
        "1.0.0.1"
        "8.8.8.8"
      ];

      cache-size = 10000;
      no-resolv = true;
      domain-needed = true;
      bogus-priv = true;
    };
  };
}
