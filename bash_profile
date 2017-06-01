[ -z "$PS1" ] && return

export HISTCONTROL=ignoredups
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# Tell ls to be colourful
export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Default
  # GIT_PROMPT_THEME=Custom # use custom .git-prompt-colors.sh
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

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f /usr/local/etc/bash_completion.d ]; then
  . /usr/local/etc/bash_completion.d/*
fi

source /usr/local/etc/bash_completion.d/brew
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-extras
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/npm
source /usr/local/etc/bash_completion.d/pandoc

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
export EDITOR='atom'
export BUNDLER_EDITOR='atom'
export GIT_EDITOR='vim'

# In order for gpg to find gpg-agent, gpg-agent must be running, and there must be an env
# variable pointing GPG to the gpg-agent socket. This little script, which must be sourced
# in your shell's init script (ie, .bash_profile, .zshrc, whatever), will either start
# gpg-agent or set up the GPG_AGENT_INFO variable if it's already running.

# Add the following to your shell init to set up gpg-agent automatically for every shell
if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
    source ~/.gnupg/.gpg-agent-info
    export GPG_AGENT_INFO
else
    eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

# .. with rbenv
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
