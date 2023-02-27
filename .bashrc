#!/bin/bash

alias gt=git

# add

alias gta='git add'
alias gtaa='git add -A'
alias gtap='git add -p'
alias gtau='git add -u'

# branch (checkout)

alias gtb='git checkout'
alias gtbi='git checkout -b'
alias gtbl='git branch'
alias gtba='git branch -a'

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

# history (stash list)

alias gth='git stash list'

# init

alias gti='git init'

# jump (stash push)

alias gtj='git stash'

# kill (stash pop)

alias gtk='git stash pop'

# log

alias gtl='git log'

# pick (cherry-pick)

alias gtp='git cherry-pick'

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
