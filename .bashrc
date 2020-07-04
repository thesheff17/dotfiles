# additions I add to my .bashrc

# https://docs.brew.sh/Homebrew-on-Linux
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

# virtualenvwrapper setup
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# show git branch you are on
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
