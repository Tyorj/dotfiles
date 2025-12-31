# FZF
export FZF_DEFAULT_OPTS='
  --height 50%
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#121212,bg+:#232300
  --color=hl:#d7d787,hl+:#d7d700,info:#afaf87,marker:#d7d75f
  --color=prompt:#d7d700,spinner:#d7d7af,pointer:#d7d700,header:#d7d700
  --color=border:#262626,label:#aeaeae,query:#d7d700
  --border="sharp" --border-label="" --preview-window="border-sharp" --prompt="> "
  --marker=">" --pointer="◆" --separator="─" --scrollbar="│" --layout=reverse'
# FZF-tab
export FZT_DEFAULT_OPTS='
  --height 50%
  --color=fg:#d0d0d0,fg+:#d0d0d0,bg:#121212,bg+:#232300
  --color=hl:#d7d787,hl+:#d7d700,info:#afaf87,marker:#d7d75f
  --color=prompt:#d7d700,spinner:#d7d7af,pointer:#d7d700,header:#d7d700
  --color=border:#262626,label:#aeaeae,query:#d7d700 '

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a1 --color=always --icons=always $realpath'
zstyle ':fzf-tab:*' fzf-flags $(echo $FZT_DEFAULT_OPTS) 

# ZSH-AUTOCOMPLETE
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=185,bold,underline"
