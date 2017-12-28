a[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

#Colors
Black='\e[0;30m'
Red='\e[0;31m'
Yellow='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
White='\e[0;37m'



export PS1='\[\033[0;36m\]Max \[\033[0;31m\]\W \[\033[34m\]$(git_prompt) \[\033[0m\]$ '

git_prompt ()
{
  if ! git rev-parse --git-dir > /dev/null 2>&1; then
    return 0
  fi
  git_branch=$(Git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
  if git diff --quiet 2>/dev/null >&2; then
    git_color="${c_git_clean}"
  else
    git_color=${c_git_dirty}
  fi
  echo " ($git_color$git_branch${c_reset})"
}

##### ALIASES #######

alias subl='sublime'
alias at='atom'
alias dt='cd Desktop'
alias prof="s ~/.bash_profile"
alias reprof=". ~/.bash_profile"
alias s="at ."
alias rebase="git pull --rebase upstream master"
alias gp="git push origin"
alias grm="git rebase master"
alias hp='cd ~/documents/hollywood_paws_react'
alias cast='cd ~/documents/barbizonCastingAngular'
alias hp='cd ~/documents/hollywoodPaws'
alias d='cd ~/documents'
alias o='open .'




#GIT
alias gc='git clone'
alias g='git'
alias co='git checkout'
alias add='git add'
alias cmt='git commit -m'
alias stat='git status'
alias log='git log --pretty=oneline --graph'
alias br='git branch'
alias ft='git fetch'
alias rb='git rebase'
alias gpom='git pull origin master'
alias ghom='git push origin master'export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export NODE_PATH=/usr/lib/node_modules:$NODE_PATH
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
export NODE_PATH=$NODE_PATH:/Users/maxince/.node/lib/node_modules

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
