# ~/.config/zsh/options.zsh

# --- HISTORY (Internal Shell Feature) ---
# Grouping Location + Size + Behavior together for modularity.
HISTFILE="$XDG_STATE_HOME/zsh_history" # Use XDG State (defined in .zprofile)
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY          # Append, don't overwrite
setopt HIST_IGNORE_ALL_DUPS    # Clean history
setopt SHARE_HISTORY           # Live sync between tabs

# --- NAVIGATION (Internal Shell Behavior) ---
setopt AUTO_CD                 # 'Downloads' -> cd Downloads
setopt AUTO_PUSHD              # Keep directory stack

# --- UI (Internal Shell Look) ---
setopt INTERACTIVE_COMMENTS    # Allow # comments in shell
