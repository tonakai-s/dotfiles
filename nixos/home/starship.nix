{ ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      character = {
        format = "$symbol";
        success_symbol = "[➜ ](bold green)";
        error_symbol = "[➜ ](bold red)";
      };
    };
  };
}
