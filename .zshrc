# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/junjiexun/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
    vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration
ALLURE_HOME=/Users/junjiexun/develop/allure-2.13.5
export ALLURE_HOME
Q_HOME=/Users/junjiexun/quick
CONDA_HOME=~/opt/anaconda3
M2_HOME=/Users/junjiexun/develop/apache-maven-3.5.4
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home
#JAVA_HOME=/Users/junjiexun/Library/Java/JavaVirtualMachines/openjdk-14.0.1/Contents/Home
export JAVA_HOME
ANT_HOME=/Users/junjiexun/develop/apache-ant-1.10.9
GRADLE_HOME=/Users/junjiexun/develop/gradle-4.10.1
B_HOME=/Users/junjiexun/PycharmProjects/blabla/blabla
export GOPATH=/Users/junjiexun/gopath
RUST_HOME=/Users/junjiexun/.cargo
SCALA_HOME=/Users/junjiexun/develop/scala-2.13.2
REDIS_HOST=127.0.0.1
BETTER_EXCEPTION=1
export BETTER_EXCEPTION
export RUSTUP_DIST_ROOT=https://mirrors.ustc.edu.cn/rust-static
export PSQL_HOME=/usr/local/pgsql

alias psqll='psql -U postgres -h localhost'
alias ll='ls -lFh'
alias soa='source activate'
alias sod='conda deactivate'
alias q='$Q_HOME/quick.sh'
alias qrt='$Q_HOME/quick-removetag.sh'
alias qct='$Q_HOME/quick-createtag.sh'
alias qfy='$Q_HOME/quick-baidufanyi.sh'
alias sshdis='ssh root@192.168.11.21'
alias sshocr='ssh oriente@3.0.104.243'
alias sshjump='ssh junjie.xun@161.117.53.88 -p 2222'
alias sshdev='ssh ops@13.228.218.210'
alias sshdissit='ssh ops@18.136.209.148'
alias sshxjj='ssh -i "/Users/junjiexun/private/xjj" root@132.232.12.101'
alias sshxyj='ssh root@118.25.47.130'
alias sshasdf='ssh root@111.231.91.41'
alias sshala='ssh oriente@54.255.204.40'
alias sshhg='ssh root@113.31.102.64'
alias gita="python3 -m gita"
alias cck="cargo check"
alias ct="cargo test"
alias cf="cargo fix"

# blabla script start
alias tag='python $B_HOME/blabla.py tag'
alias tagd='python $B_HOME/blabla.py tag --e dev'
alias tagr='python $B_HOME/blabla.py tag --e reg'
alias tagh='python $B_HOME/blabla.py tag --e hot'
alias qmpt='python $B_HOME/blabla.py qmpt'
alias bri='python $B_HOME/blabla.py bri'
alias merge='python $B_HOME/blabla.py merge'
alias bcube='python /Users/junjiexun/PycharmProjects/blind-cube-autoencode/autoencoder.py bcube'

alias deploy='python $B_HOME/blabla.py deploy'
alias sync='python $B_HOME/blabla.py sync'
# blabla script end 

PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$RUST_HOME/bin:$PSQL_HOME/bin:$PATH"

export GOPATH
export PATH=$ANT_HOME/bin:$ALLURE_HOME/bin:$SCALA_HOME/bin:$GOPATH/bin:$GRADLE_HOME/bin:$JAVA_HOME/bin:$M2_HOME/bin:$CONDA_HOME/bin:$PATH

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
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/junjiexun/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/junjiexun/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/junjiexun/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/junjiexun/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export RUST_LOG=debug

