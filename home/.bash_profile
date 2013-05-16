export CLICOLOR=1
export LSCOLORS=gxfxaxdxcxegedabagacad
export PS1='\[\e[0;35m\]⌘ \[\e[m\]\[\e[1;32m\]\w \[\e[m\]\[\e[0;33m\]~> \[\e[m\]\[\e[m\]\[\e[0;33m\]`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\[\e[m\]'


#-------------------
# Personnal Aliases
#-------------------

alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias b='cd $OLDPWD'
alias show='history | awk '\''{CMD[$2]++;count++;} END { for (a in CMD )print CMD[ a ]" " CMD[ a ]/count*100 "% " a }'\'' | grep -v "./" | column -c3 -s " " -t |sort -nr | nl | head -n10'
alias h='cd'

####End of Aliases#######


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GNUTERM=x11
export DISPLAY=:0

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
