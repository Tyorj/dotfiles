autoload -Uz compinit
zstyle ':completion:*' menu select              # Select with arrows
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # Case insensitive
zmodload zsh/complist
compinit
_comp_options+=(globdots)                       # Autocomplete hidden files
