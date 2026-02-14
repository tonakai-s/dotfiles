{ ... }:

{
    programs.zsh = {
        enable = true;
        shellAliases = {
            btw = "echo I use Nixos, btw";
            ll = "ls -lah";
            img = "qimgv $@";
            nixedit = "nvim ~/workspace/dotfiles/nixos";
            nixdesktop = "sudo nixos-rebuild switch --flake /home/renas/.config/nixos#desktop";
            nixthinkpad = "sudo nixos-rebuild switch --flake /home/renas/.config/nixos#thinkpad";
        };
        initContent = ''
            eval "$(starship init zsh)"
        '';
    };
}
