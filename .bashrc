# If not running interactively, don't do anything
[[ $- != *i* ]]	&& return

[[ -f ~/.aliases ]] && . ~/.aliases

PS1='[\u@\h \W]\$ '
