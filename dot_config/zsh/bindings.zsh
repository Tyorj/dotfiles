#  Enable Vim Mode
bindkey -v


#  Cursor Shape Switching (Block on Esc, Line on Insert)
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] || [[ ${KEYMAP} == viins ]] || [[ ${KEYMAP} == '' ]] || [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select

#   Arrow Keys & History Search
# If you typed "git", UP will find the last "git..." command.
# If you typed nothing, UP acts like normal UP.

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind Up/Down in Insert Mode (viins)
bindkey -M viins '^[[A' up-line-or-beginning-search
bindkey -M viins '^[[B' down-line-or-beginning-search

# Bind Up/Down in Normal Mode (vicmd) - just in case
bindkey -M vicmd '^[[A' up-line-or-beginning-search
bindkey -M vicmd '^[[B' down-line-or-beginning-search


#  "Regular" Shortcuts in Insert Mode (The Hybrid Part)
bindkey -M viins '^A' beginning-of-line
bindkey -M viins '^E' end-of-line
bindkey -M viins '^[[1;5C' forward-word    # Ctrl+Right
bindkey -M viins '^[[1;5D' backward-word   # Ctrl+Left
bindkey -M viins '^?' backward-delete-char # Backspace
bindkey -M viins '^U' kill-whole-line
bindkey -M viins '^W' backward-kill-word

#  Fix Esc Delay
KEYTIMEOUT=1
