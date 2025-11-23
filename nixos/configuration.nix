{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;  # Easiest to use and most distros use this by default.

  time.timeZone = "America/Sao_Paulo";

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

  hardware.nvidia = {
	  modesetting.enable = true;
	  package = config.boot.kernelPackages.nvidiaPackages.stable;
	  open = false;
  };
  services.xserver.videoDrivers = [ "nvidia" ];
  nixpkgs.config.allowUnfree = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };


# Enable sound.
# services.pulseaudio.enable = true;
# OR
  services.pipewire = {
	  enable = true;
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
networking.nameservers = [ "127.0.0.1" ];

  users.users.renas = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      xwayland-satellite
      google-chrome
      qimgv
    ];
    shell = pkgs.zsh;
  };

  programs.firefox.enable = true;
  programs.niri = {
    enable = true;
  };
  programs.steam = {
		enable = true;
		gamescopeSession.enable = true;
	};
  programs.xwayland.enable = true;
  programs.zsh.enable = true;

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
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.05";

}
