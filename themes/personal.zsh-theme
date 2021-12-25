export LSCOLORS=ExcxgxdxHxxxxxHxHxFxFx

function arrow {
    echo '%(?.%F{green}➜%f.%F{red}➜%f)'
}

PROMPT='$(arrow)  %F{blue}%~%f $(git_prompt_info)%F{yellow}✦%f '
RPROMPT='$(git_prompt_status) %D{%I:%M %p}'

ZSH_THEME_GIT_PROMPT_PREFIX='%F{yellow}('
ZSH_THEME_GIT_PROMPT_SUFFIX='%F{yellow})%f%f '
ZSH_THEME_GIT_PROMPT_DIRTY=' %F{red}∆%f'
ZSH_THEME_GIT_PROMPT_CLEAN=' %F{green}★%f'

ZSH_THEME_GIT_PROMPT_MODIFIED='%F{yellow} %BM%b%f'
ZSH_THEME_GIT_PROMPT_DELETED='%F{red} %BD%b%f'
ZSH_THEME_GIT_PROMPT_UNTRACKED='%F{green} %BU%b%f'

ZSH_THEME_GIT_PROMPT_ADDED='%F{cyan} %BA%b%f'
ZSH_THEME_GIT_PROMPT_STASHED='%F{magenta} %BS%b%f'

ZSH_THEME_GIT_PROMPT_AHEAD=' %B↺%b'
ZSH_THEME_GIT_PROMPT_BEHIND=' %B↻%b'