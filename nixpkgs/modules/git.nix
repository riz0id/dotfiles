{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    extraConfig = {
      core = {
        excludesfile = "~/git/src/ignore.md";
        editor = "code --wait";
      };
      color = {
        diff = "auto";
        status = "auto";
        branch = "auto";
        interactive = "auto";
        ui = true;
        pager = true;
      };
      commit = {
        template = "${import git/commit.template.nix { 
          inherit (pkgs) writeText;
        }}";
      };
      # "filter \"lfs\"" = {
      #   required = true;
      #   clean = "git-lfs clean -- %f";
      #   smudge = "git-lfs smudge -- %f";
      #   process = "git-lfs filter-process";
      # };
      init = {
        defaultBranch = "main";
      };
      pull = {
        rebase = false;
      };
    };
    signing = {
      key = "";
      signByDefault = true;
    };
    userName = "Jake Leach";
    userEmail = "jacobleach@protonmail.com";
  };
}