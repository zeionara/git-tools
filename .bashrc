#!/bin/bash

alias gt=git

# add

alias gta='git add'
alias gtau='git add -u'
alias gtaa='git add -A'

# branch (checkout)

alias gtb='git checkout'
alias gtbi='git checkout -b'
alias gtbl='git branch -a'

# commit

alias gtc='git commit -m'

# download (pull)

alias gtd='git pull'

# mErgE (merge)

alias gte='git merge'

# fetch

alias gtf='git fetch'

# get (clone)

alias gtg='git clone'

# init

alias gti='git init'

# log

alias gtl='git log'

# remote

alias gtr='git remote'
alias gtrv='git remote -v'

alias gtra='git remote add'
alias gtrao='git remote add origin'

alias gtrsu='git remote set-url'
alias gtrsuo='git remote set-url origin'

# status

alias gts='git status'
alias gtsu='git status -u'

# tag

alias gtt='git tag'

gtts () {  # tag and sync
    if [[ -z $2 ]]; then
        repo=origin
        tag=$1
    else
        repo=$1
        tag=$2
    fi

    git tag $tag && git push $repo $tag
}

# upload (push)

alias gtu='git push'
alias gtui='git push -u origin master'

# eXtra (diff)

alias gtx='git diff'
alias gtxs='git diff --staged'
