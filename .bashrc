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

gtcu () {
    git commit -m "$1"
    git push
}

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

# quit tracking (assume unchanged)

alias gtq='git update-index --assume-unchanged'
alias gtqq='git update-index --no-assume-unchanged'

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

gttbs () { # tag from branch and sync
    if [[ -z $2 ]]; then
        repo=origin
        tag=$1
    else
        repo=$1
        tag=$2
    fi

    current_branch=`git rev-parse --abbrev-ref HEAD`

    git checkout $tag && \
    git tag $tag && \
    git push $repo refs/tags/$tag:refs/tags/$tag && \
    git checkout $current_branch && \
    git branch -d $tag && \
    git push $repo -d refs/heads/$tag
}

# upload (push)

alias gtu='git push'

gtuo () {
    branch=${1:-master}

    git push origin $branch
}

gtuoi () {
    branch=${1:-master}

    git push -u origin $branch
}

# take version

alias gtv='git merge --no-commit --squash'

# eXtra (diff)

alias gtx='git diff'
alias gtxs='git diff --staged'

# github cli

ghf () {
    port=${1:-8080}

    gh cs ports forward $port:$port
}
