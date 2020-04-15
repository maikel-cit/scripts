# foxbased.zsh-theme

PROMPT='%{$reset_color%}%{$fg_bold[blue]%}%~%{$reset_color%}%{$fg[cyan]%}$(git_prompt_info) $(git_remote_status)%{$reset_color%}$ '
RPROMPT='%{$fg[gray]%}%D{%I:%M:%S}%{$reset_color%}'

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Format for parse_git_dirty()
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}(!)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_UNMERGED=" %{$fg_bold[red]%}unmerged%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED=" %{$fg_bold[red]%}deleted%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED=" %{$fg_bold[yellow]%}renamed%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" %{$fg_bold[yellow]%}modified%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED=" %{$fg_bold[green]%}added%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$fg_bold[white]%}untracked%{$reset_color%}"

# Format for remote_status()
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[blue]%}(↑)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[blue]%}(↓)%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[blue]%}(↯)%{$reset_color%}"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg_bold[white]%}[%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg_bold[white]%}]"
