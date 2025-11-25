{ config, ... }:

{
  hardware.nvidia = {
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = false;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
