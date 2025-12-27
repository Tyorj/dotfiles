# History
HISTFILE="$XDG_STATE_HOME/zshistory"
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY        # Append to history file
setopt HIST_IGNORE_ALL_DUPS  # Don't record duplicates
setopt HIST_REDUCE_BLANKS    # Remove usage padding

# Navigation
setopt AUTO_CD              # cd without typing 'cd'
setopt AUTO_PUSHD           # cd pushes the old directory to stack
