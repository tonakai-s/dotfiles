{ ... }:

{
  programs.kitty = {
    enable = true;
    extraConfig = ''
      			background_opacity 0.5
      			confirm_os_window_close -1
      			cursor_shape block
      			shell_integration no-cursor
      		'';
  };
}
