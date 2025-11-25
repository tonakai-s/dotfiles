{ ... }:

{
  programs.zsh = {
    enable = true;
    shellAliases = {
      btw = "echo I use Nixos, btw";
      ll = "ls -lah";
      img = "qimgv $@";
      nixedit = "nvim ~/workspace/dotfiles/nixos";
      nixrebuild = "sudo nixos-rebuild switch --flake /home/renas/.config/nixos#nixos";

    };
    initContent = ''
      			eval "$(starship init zsh)"
      		'';
  };
}
