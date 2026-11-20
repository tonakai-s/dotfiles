{ ... }:

{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 200;
    autoRepeatInterval = 35;
    windowManager.qtile.enable = false;
  };
  services.libinput = {
    enable = true;
  };
}
