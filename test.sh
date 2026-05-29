#!/usr/bin/env bash

## Initializing a new Git repository

alt-git-init
tree -a
git status

clear
## Creating a new file and committing it to the repository

touch file1.txt
echo "This is file 1" > file1.txt

alt-git-add file1.txt
tree -a
git status

alt-git-commit -m "Add file1.txt"
tree -a
git status

git log --oneline

clear
## Branching

alt-git-branch

alt-git-branch to-delete
alt-git-branch

alt-git-branch -d to-delete
alt-git-branch

alt-git-branch new-feature
alt-git-switch new-feature

touch file2.txt
echo "This is file 2" > file2.txt

alt-git-add file2.txt
alt-git-commit -m "Add file2.txt"

git log --oneline

clear
## Tags

alt-git-tag v1.0
alt-git-tag
