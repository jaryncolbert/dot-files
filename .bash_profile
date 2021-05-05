parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

[ -r ~/.bashrc ] && source ~/.bashrc
