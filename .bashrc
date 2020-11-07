# If not running interactively, don't do anything
[[ $- != *i* ]]	&& return

[[ -f ~/.aliases ]] && . ~/.aliases

PROMPT_DIRTRIM=3
PS1="\[\033[01;31m\][\[\033[01;33m\]\u\[\033[00;33m\]@\[\033[01;34m\]\h\[\033[01;35m\] \w\[\033[01;31m\]]\[\033[01;37m\]\$\[\033[0m\] "

shopt -s autocd
