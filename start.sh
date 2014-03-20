#!/bin/bash -ex
cp -r kdd_blank $1
mv $1/kdd_blank.tex $1/$1.tex
rm $1/start.sh
rm -rf $1/.git
cd $1
git init .
git add * .gitignore
git commit -m"Initial commit"
