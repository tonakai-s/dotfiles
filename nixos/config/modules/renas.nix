{ pkgs, ... }:

{
  users.users.renas = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
      google-chrome
      qimgv
      xwayland-satellite
    ];
    shell = pkgs.zsh;
  };
}
