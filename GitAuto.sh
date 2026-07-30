#!/usr/bin/zsh

Day=$1


cd ~/Devops-Lab || exit

git status
git add .
git status

sleep 3

git commit -m "Day $Day "

sleep 2

git push origin main
