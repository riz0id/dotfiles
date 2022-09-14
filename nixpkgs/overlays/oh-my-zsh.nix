self: super: 

{
  oh-my-zsh = super.oh-my-zsh // {
    packages = (super.oh-my-zsh.packages or { }) // {
      omz-riz0id = 
        import ../pkgs/oh-my-zsh/packages/omz-riz0id.nix {
          inherit (self) symlinkJoin;
          inherit (self.oh-my-zsh.themes) omz-theme-riz0id;
        };
    };
    themes = (super.oh-my-zsh.themes or { }) // {
      omz-theme-riz0id = 
        import ../pkgs/oh-my-zsh/themes/omz-theme-riz0id.nix {
          inherit (self) writeTextDir;
        };
    };
  };
}