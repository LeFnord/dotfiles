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

alias sinatra-start='rackup --port 3000'

# for standard sageone.de
alias buchhaltung='RAILS_RELATIVE_URL_ROOT=/buchhaltung rails server --port 3030'
alias ms1='rails server --port 3010'

alias ber='bundle exec rails s'
alias bep='bundle exec puma'

alias simulator='RAILS_RELATIVE_URL_ROOT=/simulator rails server --port 8100'
