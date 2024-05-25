username() {
   echo "%n"
}

directory() {
   echo "%~"
}

current_time() {
   echo "%*"
}

TRAPALRM() {
    zle reset-prompt
}

TMOUT=1

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B%F{#f54337}┌─[%f%b\
$(username)\
%B%F{#f54337}]──[%f%b\
$(current_time)\
%B%F{#f54337}]──[%f%b\
$(directory)$(git_prompt_info)\
%B%F{#f54337}]%f%b
%B%F{#f54337}└─%f%b\
>>> '