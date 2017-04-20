# ----------
# aliases
# ----------

alias ll='ls -l -G'
alias la='ls -lA -G'
alias l='ls -CF -G'

alias mkdate='mkdir `date "+%d_%m_%Y"`'
alias mongorun='mongod run --dbpath /usr/local/var/mongodb --bind_ip 127.0.0.1 --rest --journal'
alias cdf='cd `osascript -e "tell application \"Finder\" to if window 1 exists then if target of window 1 as string is not \":\" then get POSIX path of (target of window 1 as alias)"`'

# Nginx needs to bind to port 80 so must run as /Library/LaunchDaemon with sudo
alias nginx-start='sudo nginx'
alias nginx-stop='sudo nginx -s stop'

alias be='bundle exec'

alias swift='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/swift'

alias psl='ps -ef | grep '

alias gcaa='git commit -a --amend'
alias gfo='git fetch origin master'
alias gpo='git pull origin master'
alias grv='git remote -v'
