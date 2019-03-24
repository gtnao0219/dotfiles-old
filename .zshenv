# fpath
fpath=(~/.zsh/completions $fpath)

# autoload
autoload -Uz run-help
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
autoload -Uz compinit && compinit -u
autoload -Uz is-at-least
autoload -Uz select-word-style
autoload -Uz vcs_info

# LANGUAGE
export LANG="ja_JP.UTF-8"

# HISTORY
export HISTFILE="~/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000
export LISTMAX=50

# PROMPT
export PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

# PATH
export PATH="~/bin:${PATH}"

# Golang
export GOPATH="${HOME}/dev"
export PATH="${GOPATH}/bin:${PATH}"

# Java
export JAVA_VER="10.0"
if [[ -x /System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home ]]; then
  export JAVA_HOME="$(/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v ${JAVA_VER})"
  PATH="${JAVA_HOME}/bin:${PATH}"
fi

