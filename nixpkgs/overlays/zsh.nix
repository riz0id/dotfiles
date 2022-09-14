self: super: 

{
  zsh = super.zsh // {
    packages = (super.zsh.packages or { }) // {
      zsh-autosuggestions = 
        import ../pkgs/zsh/zsh-autosuggestions.nix {
          inherit (self) fetchFromGitHub;
        };
      zsh-nix-shell = 
        import ../pkgs/zsh/zsh-nix-shell.nix {
          inherit (self) bash runCommand writeScript writeText;
        };
    };
  };
}