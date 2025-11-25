{ config, ... }:

{
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
}
