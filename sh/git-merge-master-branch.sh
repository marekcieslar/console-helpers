#!/bin/bash

# alias
# alias git:merge='bash ~/console-helpers/sh/git-merge-master-branch.sh'

# Fetch the latest changes from the remote repository
git fetch origin

# Get the branch name from the first argument, default to 'master' if not provided
BRANCH=${1:-master}

# Update the local branch
git merge origin/$BRANCH $BRANCH

# Merge changes from the specified branch into the current branch
git merge $BRANCH