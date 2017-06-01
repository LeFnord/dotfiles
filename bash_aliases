# ----------
# aliases
# ----------

alias ll='ls -l -G'
alias la='ls -lA -G'
alias l='ls -CF -G'

alias cla='colorls -al --sd  --gs'

alias mkdate='mkdir `date "+%d_%m_%Y"`'
alias mongorun='mongod run --dbpath /usr/local/var/mongodb --bind_ip 127.0.0.1 --rest --journal'
alias pgrun='pg_ctl -D /usr/local/var/postgres start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop'

# Nginx needs to bind to port 80 so must run as /Library/LaunchDaemon with sudo
alias nginx-start='sudo nginx'
alias nginx-stop='sudo nginx -s stop'

alias be='bundle exec'

# find running programm
alias psl='ps -ef | grep '

# some git shortcuts
alias gcaa='git commit -a --amend'
alias gpr='git pull --rebase'

alias cdiff='colordiff'
