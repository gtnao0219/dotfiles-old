# tmux
# ref: https://qiita.com/fieldville/items/e24500165be947db8eaa
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# load moudles
for f in ~/.zsh/[0-9]*.(sh|zsh); do
  source "$f"
done

# z-plug
if [ -f ~/.zplug/init.zsh ]; then
  export ZPLUG_LOADFILE=~/.zsh/zplug.zsh
  source ~/.zplug/init.zsh
  if ! zplug check --verbose; then
    printf "Install? [y/N]:"
    if read -q; then
      echo; zplug install
    fi
    echo
  fi
  zplug load
fi

