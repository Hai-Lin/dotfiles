function ssh_connection() {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ] || [ -n "$SSH_CONNECTION" ]; then
    echo "%{$fg[red]%}%n@%m:"
	else
		echo "%{$fg[magenta]%}⌘ "
  fi
}

PROMPT='$(ssh_connection) %{$fg[cyan]%}${PWD/#$HOME/~} %{$fg[green]%}$(git_prompt_info)%{$fg[yellow]%} ~> %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

