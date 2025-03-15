# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
#bindkey -v
# End of lines configured by zsh-newuser-install

bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^X^X' history-beginning-search-menu
# fzf alias: CTRL + SPACE (gadget parameters configured in the FZF_CTRL_T_COMMAND environment variable)
bindkey "^@" fzf-file-widget

# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit history-beginning-search-menu
compinit
# End of lines added by compinstall
zstyle ':completion:*' menu yes select
zle -N history-beginning-search-menu

# Plugins
source ~/.my-custom-zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /.my-custom-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.my-custom-zsh/zsh-you-should-use/you-should-use.plugin.zsh
source ~/.my-custom-zsh/zsh-bat/zsh-bat.plugin.zsh

# 1Password
export SSH_AUTH_SOCK=~/.1password/agent.sock

# Cargo
. "$HOME/.cargo/env"

# My alias
alias ls='exa --icons -F -H --group-directories-first --git -1'

# Impostare il titolo della finestra in base alla directory
precmd() {
    print -Pn "\e]0;%n@%m:%~\a"
}

# fzf
source <(fzf --zsh)

# Startship.rs
eval "$(starship init zsh)"

