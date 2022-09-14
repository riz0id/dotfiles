{ writeTextDir }:

let 
in writeTextDir "themes/omz-theme-riz0id.zsh-theme" ''

function _user_host() {
  echo "%F{10}%n%{$reset_color%}@%F{10}%m%{$reset_color%} "
}

function _nix() {
  if [[ $IN_NIX_SHELL = "impure" ]]; then
    echo "%F{11}nix:impure%{$reset_color%} "
  elif [[ $IN_NIX_SHELL = "pure" ]]; then 
    echo "%F{11}nix:pure%{$reset_color%} "
  fi
}

function _indicator() {
  echo "%F{5}λ%{$reset_color%}%F{13}=%{$reset_color%}" 
}

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%}◒ "
ZSH_THEME_GIT_PROMPT_CLEAN=" "

ZSH_THEME_GIT_TIME_SINCE_COMMIT_SHORT="%{$fg[white]%}"
ZSH_THEME_GIT_TIME_SHORT_COMMIT_MEDIUM="%{$fg[yellow]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_LONG="%{$fg[red]%}"
ZSH_THEME_GIT_TIME_SINCE_COMMIT_NEUTRAL="%{$fg[white]%}"

# The prompt
PROMPT='$(_user_host)$(_nix)$(_indicator) '

RPROMPT='%{$fg[cyan]%}%c $(git_prompt_info)%{$reset_color%}'

''