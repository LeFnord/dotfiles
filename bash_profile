[ -z "$PS1" ] && return

export HISTCONTROL=ignoredups
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

PS1="\[\e[1;37m\]\!:\j \[\e[1;36m\]\W ★\[\e[0m\] "


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_env ]; then
    . ~/.bash_env
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
export RAILS_ENV='development'
export RACK_ENV='development'
export XMI='development'

export EDITOR=mate

# .. with rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
  