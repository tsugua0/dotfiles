#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

FG_BLACK=$(tput setaf 0)
FG_RED=$(tput setaf 1)
FG_GREEN=$(tput setaf 2)
FG_YELLOW=$(tput setaf 3)
FG_BLUE=$(tput setaf 4)
FG_MAGNETA=$(tput setaf 5)
FG_CYAN=$(tput setaf 6)
FG_WHITE=$(tput setaf 7)

BG_BLACK=$(tput setab 0)
BG_RED=$(tput setab 1)
BG_GREEN=$(tput setab 2)
BG_YELLOW=$(tput setab 3)
BG_BLUE=$(tput setab 4)
BG_MAGNETA=$(tput setab 5)
BG_CYAN=$(tput setab 6)
BG_WHITE=$(tput setab 7)

A_BOLD=$(tput bold)
A_UNDERLINE=$(tput smul)
A_NORMAL=$(tput sgr0)

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias less='less -R'
PS1='[\[${FG_GREEN}\]\u\[${A_NORMAL}\]@\h \[${FG_WHITE}\]\W\[${A_NORMAL}\]]\$ '
