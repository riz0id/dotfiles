{ config, pkgs, ... }:

let 
  themes = import alacritty/themes.nix {
    inherit pkgs;
  };
in {
  programs.alacritty = {
    enable = true;
    settings = {
      colors = {
        primary = {
          background = "0x282c34";
          foreground = "0xbbc2cf";
        };

        normal = {
          black   = "0x282c34";
          red     = "0xff6655";
          green   = "0x99bb66";
          yellow  = "0xECBE7B";
          blue    = "0x2257A0";
          magenta = "0xa9a1e1";
          cyan    = "0x5699AF";
          white   = "0x5B6268";
        };

        bright = {
          black   = "0x1c1f24";
          red     = "0xdd8844";
          green   = "0x44b9b1";
          yellow  = "0xECBE7B";
          blue    = "0x51afef";
          magenta = "0xc678dd";
          cyan    = "0x46D9FF";
          white   = "0xbbc2cf";
        };
      };
      font = {
        size = 16;
      };
      live_config_reload = true;
      scrolling.history = 100000;
    };
  };
}