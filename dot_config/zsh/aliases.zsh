# --- 1. System Safety (Do not delete things by accident) ---
alias cp="cp -i"              # Confirm before overwriting
alias mv="mv -i"              # Confirm before overwriting
alias rm="rm -i"              # Confirm before deleting
alias mkdir="mkdir -p"        # Create parent dirs automatically

# --- 2. Navigation & Listing ---
alias es="eza -a --long --icons=auto --color=auto"
alias c="clear"
alias ..="cd .."
alias ...="cd ../.."

# --- 3. Arch Linux Management ---
alias v="nvim"
alias sv="sudo nvim"

# --- 4. Git (The Essentials) ---
# Since we removed OMZ, we manually add the most used ones here.
alias g="git"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m"
alias gs="git status"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias gco="git checkout"
alias gb="git branch"

# --- 5. Config Management (Your "Control Center") ---
# Quickly edit your config files without typing long paths.
alias zconf="$EDITOR ~/.zshrc"
alias aconf="$EDITOR ~/.config/zsh/aliases.zsh"
alias p10kconf="$EDITOR ~/.config/zsh/p10k.zsh"

# Reload shell to apply changes immediately
alias zeload="source ~/.zshrc"

