{ lib, ... }:

{
  imports = [
    shell/bash.nix
    shell/direnv.nix
    shell/zsh.nix
  ];
}