{ bash, runCommand, writeScript, writeText }:

let 
  buildShellShim = import zsh-nix-shell/buildShellShim.nix {
    inherit bash writeScript;
  };

  nix-shell-plugin = import zsh-nix-shell/nix-shell.plugin.zsh.nix {
    inherit buildShellShim writeText;
  };
in {
  name = "zsh-nix-shell";
  file = "nix-shell.plugin.zsh";
  src = runCommand "my-example" {} ''
    mkdir $out
    cp ${nix-shell-plugin} $out/nix-shell.plugin.zsh
    mkdir $out/scripts
    ln -s ${buildShellShim} $out/scripts/buildShellShim
  '';
}