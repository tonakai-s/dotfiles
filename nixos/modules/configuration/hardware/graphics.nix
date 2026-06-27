{
  config,
  ...
}:

{
  hardware.nvidia = {
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    #package = config.boot.kernelPackages.nvidiaPackages.beta;
    open = false;
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };
}
