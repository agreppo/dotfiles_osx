# PS1
# \h:\W \u\$

export PS1="\[\033[0;36m\]\W\[\033[0;31m\]|➙ \[\033[0m\]"
# export PS1="\[\033[0;34m\]\u\[\033[0;36m\]@\[\033[0;34m\]\h\[\033[0;36m\]:\W\[\033[0m\]$ "
# PS1="\[\033[47m\]\[\033[34m\] \u@\h:\W \[\033[0m\]▶"

# Variables env
# http://www.bigsoft.co.uk/blog/index.php/2008/04/11/configuring-ls_colors
export GREP_OPTIONS="--color=auto"

# Alias
if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

# GITHUB_API_TOKEN
if [ -f ~/.brew_github_key ]; then
  source ~/.brew_github_key  
fi

# Installer bash-completion avec Brew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
