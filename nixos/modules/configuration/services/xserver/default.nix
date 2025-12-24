{ ... }:

{
    services.xserver = {
        enable = true;
        autoRepeatDelay = 200;
        autoRepeatInterval = 35;
        windowManager.qtile.enable = true;
        libinput.enable = true;
    };
}
