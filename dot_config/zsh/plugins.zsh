# FZF
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_OPTS="--preview 'echo {} | bat --color=always -pl sh'"
# export FZF_CTRL_R_OPTS="--preview 'cat {}' --preview-window up:3:hidden:wrap --bind 'ctrl-/:toggle-preview'"

export FZF_DEFAULT_OPTS='
  --height 50%
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#232323,bg+:#3c3836
  --color=hl:#d7d787,hl+:#d7d700,info:#afaf87,marker:#d7d75f
  --color=prompt:#d7d700,spinner:#d7d7af,pointer:#d7d700,header:#d7d700
  --color=border:#262626,label:#aeaeae,query:#d7d700
  --border="sharp" --border-label="" --preview-window="right:60%:wrap" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│" --layout=reverse
  --preview="if [[ -d {} ]]; then eza -a1 --color=always --icons=always {}; else bat --color=always --style=numbers --line-range :500 {}; fi"'
# FZF-tab
export FZT_DEFAULT_OPTS='
  --height 60%
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#232323,bg+:#3c3836
  --color=hl:#d7d787,hl+:#d7d700,info:#afaf87,marker:#d7d75f
  --color=prompt:#d7d700,spinner:#d7d7af,pointer:#d7d700,header:#d7d700
  --color=border:#262626,label:#aeaeae,query:#d7d700
  --preview-window=right:60%
  --layout=reverse'
zstyle ':fzf-tab:*' fzf-flags $(echo $FZT_DEFAULT_OPTS)

zstyle ':fzf-tab:complete:*' fzf-preview 'if [[ -d $realpath ]]; then eza -a1 --color=always --icons=always $realpath; else bat --color=always --style=numbers --line-range :500 $realpath; fi'

# ZSH-AUTOCOMPLETE
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=185,bold,underline"
