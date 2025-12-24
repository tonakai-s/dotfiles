{ pkgs, ... }:

{
    users.users.renas = {
        isNormalUser = true;
        extraGroups = [ "wheel" "input" ];
        packages = with pkgs; [
            tree
            qimgv
            nixd
            lua-language-server
        ];
        shell = pkgs.zsh;
    };
}
