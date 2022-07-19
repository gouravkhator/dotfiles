################################################################################
# ------------------------Main Zsh Configs (Without Oh-My-ZSH)------------------
################################################################################

# the codes given in the curly braces are the color codes
# these color codes can be found in this link: https://unix.stackexchange.com/a/124409

PROMPT='%(?.%F{159}➻.%F{red}✕)%f %B%F{222}%1~%f%b %F{247}➦%f '

# right side prompt for a shell..
RPROMPT='%F{189}%*'

#################################################################################
# -------------------------Environment Flags and Exports-------------------------
#################################################################################

# If you come from bash, you might have to change your $PATH to include all the PATH binaries for zsh too.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#################################################################################
# ----------------------------------Key Bindings---------------------------------
#################################################################################

# key bindings for traversing through the command via <Ctrl + Left_Arrow_key> and <Ctrl + Right_Arrow_key> 
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

################################################################################
# ------------------------User Configured Aliases------------------------
################################################################################

# alias for alacritty set by me, as alacritty on wayland was showing weird bordered windows
alias alacritty="env -u WAYLAND_DISPLAY alacritty"

# if `exa` command exists, then alias to exa, else alias to long-listing with some flags of `ls` command itself
if type "/usr/bin/exa" > /dev/null; then
    # ls will now be `exa` showing all files including hidden files/folders,
    # it does long-listing, and sorts from newest modified to oldest modified, with all folders displayed first..
    alias ls="exa -alF --color=always --group-directories-first --sort=oldest"
else
    alias ls="ls -alh"
fi

alias ll="ls"

##########################################################################################
# ----------------Load in the nvm environment for Node Version management-----------------
##########################################################################################

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#######################################################################################################
# -----Add the cargo packages and binaries in PATH variable for Rust applications and CLI packages-----
#######################################################################################################

# affix colons on either side of $PATH to simplify matching
case ":${PATH}:" in
    *:"$HOME/.cargo/bin":*)
        ;;
    *)
        # Prepending path in case a system-installed rustc needs to be overridden
        export PATH="$HOME/.cargo/bin:$PATH"
        ;;
esac
