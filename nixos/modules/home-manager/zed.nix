{
  pkgs,
  pkgs-unstable,
  lib,
  ...
}:

{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "nix"
      "toml"
      "rust"
    ];
    package = pkgs-unstable.zed-editor;
    userSettings = {
      lsp = {
        "rust-analyzer" = {
          binary = {
            path = lib.getExe pkgs.rust-analyzer;
          };
        };
      };
      vim_mode = true;
      theme = {
        mode = "dark";
        dark = "Gruvbox Dark Hard";
        light = "Gruvbox Light Hard";
      };
      buffer_font_family = "JetBrainsMono Nerd Font Mono";
      buffer_font_size = 16;
      ui_font_family = "JetBrainsMono Nerd Font Mono";
      ui_font_features = {
        calt = true;
      };
      vertical_scroll_margin = 8;
    };
  };
}
