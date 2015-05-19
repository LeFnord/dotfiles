[ -z "$PS1" ] && return

export HISTCONTROL=ignoredups
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# PS1="\[\e[1;37m\]\!:\j \[\e[1;36m\]\W ★\[\e[0m\] "
# PS1="\[\e[1;37m\]\!:\j \[\e[1;36m\]\w \[\033[1;32m\]\[\$(git_prompt_info)\]\[\033[0m\]\n\[\033[1;33m\]★\[\e[0m\] "

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  # GIT_PROMPT_THEME=Default
  GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
  # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

if [ -f ~/.bash_sec ]; then
    . ~/.bash_sec
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f /usr/local/etc/bash_completion.d ]; then
  . /usr/local/etc/bash_completion.d/*
fi

source /usr/local/etc/bash_completion.d/git-completion.bash
# ----------
# exports
# ----------

# some Ruby GC tunings
# export RUBY_GC_HEAP_INIT_SLOTS=2000000
# export RUBY_HEAP_SLOTS_INCREMENT=500000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.42
# export RUBY_HEAP_FREE_MIN=100000
# export RUBY_GC_HEAP_FREE_SLOTS=2000000
# export RUBY_GC_MALLOC_LIMIT=90000000

# .. for dev in prod rename it
# export RAILS_ENV='development'
# export RACK_ENV='development'
export XMI='development'

export EDITOR=mate

# .. with rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
