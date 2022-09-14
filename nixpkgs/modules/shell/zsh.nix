{ lib, pkgs, ... }:

let 
  strings = lib.strings;
in {
  programs.zsh = {
    enable = true;

    dotDir = ".zsh";

    enableCompletion      = true; 
    enableAutosuggestions = true; 

    history = {
      path = ".zsh/.zsh_history";
      size = 10000;
      save = 10000;
      expireDuplicatesFirst = true;
      extended = true;
    };

    oh-my-zsh = {
      enable = true;

      custom = "${pkgs.oh-my-zsh.packages.omz-riz0id}";

      plugins = [ 
        "git" 
        "macos"
        "virtualenv"
      ];

      theme = "omz-theme-riz0id";
    };

    plugins = [
      pkgs.zsh.packages.zsh-autosuggestions
      # disabled because it does not work
      pkgs.zsh.packages.zsh-nix-shell 
    ];

    sessionVariables = rec { 
      EDITOR = "code";

      PATH = strings.concatStringsSep ":" [ 
        "$PATH"
        "/run/current-system/sw/bin"
        "\${HOME}/.nix-profile/bin"
      ];

      ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE = "fg=15";

      # Strategies are in order of priority, the first-most strategies are tried 
      # before strategies occuring later in the list.
      ZSH_AUTOSUGGEST_STRATEGY = [
        "history" 
        "completion"
      ];
    };

    shellAliases = {
      # Forces the version of bash installed by nix to be used. Otherwise, the 
      # bash preinstalled by MacOS at /bin/bash will be used.
      bash = "${pkgs.bash}/bin/bash";
      ls   = "ls -laG";
      zsh  = "${pkgs.zsh}/bin/zsh";
    };
  };
}