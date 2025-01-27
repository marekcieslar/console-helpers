#!/bin/bash

# alias
# alias git:merge='bash ~/console-helpers/sh/git-merge-master-branch.sh'

BRANCH=${1:-master}

git checkout $BRANCH
git pull
git checkout -
git merge $BRANCH