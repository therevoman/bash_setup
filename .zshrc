# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:/$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder


# simplify plugins ascii recording
if [ -z "$ASCIINEMA_REC" ]; then
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
	plugins=(git ansible emoji encode64 history kubectl lpass oc podman tmux zsh-syntax-highlighting zsh-autosuggestions zsh-kubecolor)

	source $ZSH/oh-my-zsh.sh
else
	plugins=(kubectl oc)

	source $ZSH/oh-my-zsh.sh

fi

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#alias oc='bin/oc --kubeconfig=ocp/auth/kubeconfig '
alias ip="ip -c"
alias esxi1power="ipmitool -I lanplus -U admin -P <password> -H esxi1-mgmt.revoweb.home chassis power" # notsecret
# create notepad alias
alias notepad='/mnt/c/Program\ Files/TextPad\ 8/TextPad.exe -s'
#alias toocp='cd /opt/projects/ocp4'
alias ocfindall=' oc api-resources --verbs=list --namespaced -o name | egrep -v "packagemanifests.packages.operators.coreos.com|events" | xargs -n 1 -I {} bash -c "oc get --show-kind --ignore-not-found -n $1 {}"'


# start vcenter
alias startvcenter='ipmitool -I lanplus -U admin -P <password> -H esxi3-mgmt.revoweb.home chassis power on'  # notsecret

# start sno nodes
alias startsnok="ipmitool -I lanplus -U admin -P <password> -H snok-mgmt.revoweb.home chassis power on" # notsecret
alias stopsnowest='ssh -i ~/.ssh/id_rsa_openshift core@192.168.50.54 sudo shutdown +1'
alias stopsnoeast='ssh -i ~/.ssh/id_rsa_openshift core@192.168.50.53 sudo shutdown +1'
alias stopsnofast='ssh -i ~/.ssh/id_rsa_openshift core@192.168.50.52 sudo shutdown +1'
alias stopocs='ssh -i ~/.ssh/id_rsa_openshift core@192.168.54.251 sudo shutdown +1;ssh -i ~/.ssh/id_rsa_openshift core@192.168.54.252 sudo shutdown +1;ssh -i ~/.ssh/id_rsa_openshift core@192.168.54.253 sudo shutdown +1'

# OpenShift aliases
alias approvecsronce="oc get csr -o go-template='{{range .items}}{{if not .status}}{{.metadata.name}}{{\"\\n\"}}{{end}}{{end}}' | xargs oc adm certificate approve"
alias approvecsr="approvecsronce; sleep .1; approvecsronce"
alias deletecomplete="oc get po -A -o wide | grep -Ei \"complete\" | awk '{print \"oc -n \" $1 \" delete po \" $2}' | xargs -L1 -I {} bash -c \"echo {}; {}\""


# change history settings
# https://www.soberkoder.com/better-zsh-history/
#
#HISTCONTROL=ignorespace:ignoredups:erasedups
#HISTSIZE=-1
#HISTFILESIZE=-1
HISTSIZE=11000000
SAVEHIST=10000000
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.

# https://unix.stackexchange.com/questions/273861/unlimited-history-in-zsh
#HISTSIZE=10000000
#SAVEHIST=10000000
#setopt BANG_HIST                 # Treat the '!' character specially during expansion.
#setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
#setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
#setopt SHARE_HISTORY             # Share history between all sessions.
#setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
#setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
#setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
#setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
#setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
#setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
#setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
#setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
#setopt HIST_BEEP   
#setopt APPEND_HISTORY            # Append to history rather than replace it. Multiple parallel zsh sessions will all have the new entries from their history lists added to the history file, in the order that they exit.

# Aliases
# https://tldp.org/LDP/abs/html/intandnonint.html
#if [[ -o login ]]; then
#  echo "I'm a login shell"
#fi

#if [[ -o interactive ]]; then
#  echo "I'm interactive"
#fi
#if [[ -o restricted ]]; then
#  echo "I'm restricted"
#fi
# if [[ -t "$fd" || -p /dev/stdin ]]
# then
#   echo interactive
# else
#   echo non-interactive
# fi
# This doesn't make sense, but I have to have this to make it work?  oh wait, zsh already detects if its a login or rsync shell.
# echo interactive
#if [[ -n "$PS1" ]]
#if [[ ! -o interactive || -t "$fd" || -p /dev/stdin ]]
#then
#  # non-interactive
#  export NONINTERACTIVE=true
#  echo "NONINTERACTIVE $PS1"
#else
  # User specific aliases and functions
  # getting smarter with aliases https://stackoverflow.com/questions/7131670/make-a-bash-alias-that-takes-a-parameter/42466441#42466441
  alias toocp='f(){ cd /opt/ocp4; [ -n "$1" ] && { cd $1; ml oc/local };unset -f f }; f'
  
# create zsh completion for composer-cli
  source <(composer-cli completion zsh)

# get zsh complete kubectl
  source <(kubectl completion zsh)
  alias kubectl=kubecolor
  # make completion work with kubecolor
  compdef kubecolor=kubectl

  # load the custom module
  module load use.own

  # Base16 Shell
  BASE16_SHELL="$HOME/.config/base16-shell/"
  [ -z "$PS1" ] && \
      [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
          source "$BASE16_SHELL/profile_helper.sh"
        
  # base16_classic-dark

  # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

  # enable fuzzy search fzf-tmux
  [ -n "$BASH" ] && complete -F _fzf_complete_doge -o default -o bashdefault doge

  # enable zoxide enhancement for cd enhancement
  eval "$(zoxide init zsh)"

  # enable kcli
  eval "$(register-python-argcomplete kcli)"

  # enable keybase
  KEYBASE_NO_SQUIRREL=1 run_keybase -g

#fi

autoload -U compinit; compinit
