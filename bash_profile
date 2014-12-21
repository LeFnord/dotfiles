[ -z "$PS1" ] && return

export HISTCONTROL=ignoredups
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"



## git bash-prompt

GIT_THEME_PROMPT_DIRTY='*'

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo -e "(${ref#refs/heads/}$(parse_git_dirty))"
}

function parse_git_dirty {
  if [[ -n $(git status -s 2> /dev/null |grep -v ^# | grep -v "working directory clean" ) ]]; then
	  echo -e "$GIT_THEME_PROMPT_DIRTY"
  else
	echo -e "$GIT_THEME_PROMPT_CLEAN"
  fi
}

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

# PS1="\[\e[1;37m\]\!:\j \[\e[1;36m\]\W ★\[\e[0m\] "
PS1="\[\e[1;37m\]\!:\j \[\e[1;36m\]\w \[\033[1;32m\]\[\$(git_prompt_info)\]\[\033[0m\]\n\[\033[1;33m\]★\[\e[0m\] "


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

# ----------
# exports
# ----------

# some Ruby GC tunings
export RUBY_GC_HEAP_INIT_SLOTS=2000000
export RUBY_HEAP_SLOTS_INCREMENT=500000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1.42
export RUBY_HEAP_FREE_MIN=100000
export RUBY_GC_HEAP_FREE_SLOTS=2000000
export RUBY_GC_MALLOC_LIMIT=90000000

# .. for dev in prod rename it
# export RAILS_ENV='development'
# export RACK_ENV='development'
export XMI='development'

export EDITOR=mate

# .. with rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
  