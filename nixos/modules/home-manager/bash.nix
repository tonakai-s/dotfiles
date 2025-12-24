{ ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo I use Nixos, btw";
      ll = "ls -lah";
    };
  };
}
