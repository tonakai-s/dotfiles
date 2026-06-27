{ ... }:

{
  virtualisation.docker = {
    enable = true;
  };
  users.users.renas.extraGroups = [ "docker" ];
}
