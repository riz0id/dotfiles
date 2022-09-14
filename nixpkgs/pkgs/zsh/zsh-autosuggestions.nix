{ fetchFromGitHub }:

let 
  # Version v0.7.0 pinned July 28th, 2022.
  rev    = "v0.7.0";
  sha256 = "1g3pij5qn2j7v7jjac2a63lxd97mcsgw6xq6k5p7835q9fjiid98";
in {
  # will source zsh-autosuggestions.plugin.zsh
  name = "zsh-autosuggestions";
  file = "zsh-autosuggestions.plugin.zsh";
  src = fetchFromGitHub {
    inherit rev sha256;
    owner = "zsh-users";
    repo  = "zsh-autosuggestions";
  };
}