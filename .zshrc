ZSH_AUTOSUGGEST_STRATEGY=(history)

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='mvim'
fi

alias dotfiles="cd && rm -fr dotfiles && git clone https://github.com/AtsuneMogi/dotfiles && cd dotfiles && ./setup.sh"
alias gdo="google-drive-ocamlfuse ~/0"
alias ls="ls --color=auto"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias v="nvim"
alias vvc="docker pull voicevox/voicevox_engine:cpu-ubuntu20.04-latest && docker run --rm -it -p 50021:50021 voicevox/voicevox_engine:cpu-ubuntu20.04-latest"
alias vvg="docker pull voicevox/voicevox_engine:nvidia-ubuntu20.04-latest && docker run --rm --gpus all -p 50021:50021 voicevox/voicevox_engine:nvidia-ubuntu20.04-latest"

source ~/dotfiles/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt EXTENDED_HISTORY
# git
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' max-exports 6 # maximum number that can be in format
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b@%r' '%c' '%u'
zstyle ':vcs_info:git:*' actionformats '%b@%r|%a' '%c' '%u'
setopt prompt_subst
function vcs_echo {
    local st branch color
    STY= LANG=en_US.UTF-8 vcs_info
    st=`git status 2> /dev/null`
    if [[ -z "$st" ]]; then return; fi
    branch="$vcs_info_msg_0_"
    if   [[ -n "$vcs_info_msg_1_" ]]; then color=${fg[green]} #staged
    elif [[ -n "$vcs_info_msg_2_" ]]; then color=${fg[red]} #unstaged
    elif [[ -n `echo "$st" | grep "^Untracked"` ]]; then color=${fg[blue]} # untracked
    else color=${fg[cyan]}
    fi
    echo "%{$color%}[%{$branch%}]%{$reset_color%}" | sed -e s/@/"%F{yellow}@%f%{$color%}"/
}
PROMPT='%F{green}%n@%m${vcs_info_msg_0_}%F{white}: %F{blue}%~%f `vcs_echo`
%(?.%F{green}➜.%F{red}➜%f) '

# vi mode
bindkey -v
export KEYTIMEOUT=1

