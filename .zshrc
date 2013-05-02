export HISTSIZE=2000
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE

# Colors
fg_black=$'%{\e[0;30m%}'
fg_red=$'%{\e[0;31m%}'
fg_green=$'%{\e[0;32m%}'
fg_yellow=$'%{\e[0;33m%}'
fg_blue=$'%{\e[0;34m%}'
fg_magenta=$'%{\e[0;35m%}'
fg_cyan=$'%{\e[0;36m%}'
fg_white=$'%{\e[0;37m%}'
fg_lblack=$'%{\e[1;30m%}'
fg_lred=$'%{\e[1;31m%}'
fg_lgreen=$'%{\e[1;32m%}'
fg_lyellow=$'%{\e[1;33m%}'
fg_lblue=$'%{\e[1;34m%}'
fg_lmagenta=$'%{\e[1;35m%}'
fg_lcyan=$'%{\e[1;36m%}'
fg_lwhite=$'%{\e[1;37m%}'
fg_reset=$'%{\e[0;00m%}'
#Text Background Colors
bg_red=%{$'\e[0;41m'%}
bg_green=%{$'\e[0;42m'%}
bg_brown=%{$'\e[0;43m'%}
bg_blue=%{$'\e[0;44m'%}
bg_purple=%{$'\e[0;45m'%}
bg_cyan=%{$'\e[0;46m'%}
bg_gray=%{$'\e[0;47m'%}
#Attributes
at_normal=%{$'\e[0m'%}
at_bold=%{$'\e[1m'%}
at_italics=%{$'\e[3m'%}
at_underl=%{$'\e[4m'%}
at_blink=%{$'\e[5m'%}
at_outline=%{$'\e[6m'%}
at_reverse=%{$'\e[7m'%}
at_nondisp=%{$'\e[8m'%}
at_strike=%{$'\e[9m'%}
at_boldoff=%{$'\e[22m'%}
at_italicsoff=%{$'\e[23m'%}
at_underloff=%{$'\e[24m'%}
at_blinkoff=%{$'\e[25m'%}
at_reverseoff=%{$'\e[27m'%}
at_strikeoff=%{$'\e[29m'%}



autoload -U compinit

# Aliases
alias la='/bin/ls -hal'
alias pyt='/usr/bin/python'
alias -g woody='woody.jonpucila.com'
alias jontop='ssh -p 2222 -l jon woody.jonpucila.com'

# Variables
EXITCODE="%(?..%?%1v )"

if [[ `whoami` == 'root' ]] ; then
	PROMPT="${fg_red}${EXITCODE}${fg_reset}${fg_lred}%n${fg_lgreen}@%m ${fg_reset}%~%# "
else
	PROMPT="${fg_red}${EXITCODE}${fg_reset}${fg_lcyan}%n${fg_lmagenta}@%m ${fg_reset}%~%# "
fi

#Only works on Mac laptops. If path can't be reached there is no rprompt.
	RPROMPT="`/Users/jonny/bin/batcharge.py 2>/dev/null`"

#Enable options
setopt autocd #cd's to directory if directory name is issued as command
setopt correctall correct_all 
setopt hash_list_all
setopt append_history
setopt share_history
setopt extended_history
setopt histignorealldups
setopt AUTO_PUSHD

bindkey '^a' backward-word
bindkey '^d' forward-word
bindkey '^w' beginning-of-line
bindkey '^e' end-of-line
