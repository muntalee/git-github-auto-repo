#!/bin/bash
# AUTOMATIC GIT/GITHUB REPO CREATOR
# CREATED BY github.com/krakenegg101

# get name of repo
read -p 'Name of Repo: ' repoName

# create repo folder
mkdir $repoName
cd $repoName

# add necessary files
touch README.md
printf "# $repoName\n" >> README.md
touch .gitignore

# setup git
git init -b origin
git add .
git commit -m "initial commit"

# push to github
gh repo create --source=. --private --push
