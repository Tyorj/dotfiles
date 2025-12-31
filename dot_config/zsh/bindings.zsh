# --- 1. Reset to Standard Mode ---
# This automatically enables:
# Ctrl + A -> Go to Start
# Ctrl + E -> Go to End
# Ctrl + W -> Delete previous word
# Ctrl + U -> Clear whole line
bindkey -e

# --- 2. Word Jumping (Ctrl + Arrows) ---
# These specific codes work for WezTerm and most modern terminals
bindkey '^[[1;5C' forward-word       # Ctrl + Right Arrow
bindkey '^[[1;5D' backward-word      # Ctrl + Left Arrow

# --- 3. Essential Fixes ---
bindkey "^[[3~" delete-char          # Delete Key
bindkey "^[[H"  beginning-of-line    # Home Key
bindkey "^[[F"  end-of-line          # End Key

# --- 4. Suggestions (Quality of Life) ---

# Ctrl + Backspace to delete a whole word
# (Standard Backspace only deletes one char)
bindkey '^H' backward-kill-word

# Ctrl + z to Undo
bindkey '^z' undo

