{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/workspace/dotfiles";
  create_symlink = path: config.lib.file.mkOutOfStoreSymlink path;
in
{
  xdg.configFile."waybar" = {
    source = create_symlink "${dotfiles}/waybar/";
    recursive = true;
  };
  xdg.configFile."nvim" = {
    source = create_symlink "${dotfiles}/nvim";
    recursive = true;
  };
}
