{ ... }:

{
    services.xserver.displayManager.setupCommands = ''
    xrandr --output DP-0 --primary --mode 3440x1440 --rate 144.00
    '';
}
