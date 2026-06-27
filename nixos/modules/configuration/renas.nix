{ pkgs, pkgs-unstable, ... }:

{
  users.users.renas = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "input"
    ];
    packages = with pkgs; [
      tree
      qimgv
      nixd
      lua-language-server
      playerctl
      anki
    ];
    shell = pkgs.zsh;
  };

  nix.settings.trusted-users = [
    "root"
    "renas"
  ];
}
