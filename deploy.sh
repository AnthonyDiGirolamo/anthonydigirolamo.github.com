#!/bin/bash
bundle exec jekyll build
git checkout master
rsync -av --delete --ignore-existing .git --ignore-existing vendor --ignore-existing _site --ignore-existing .bundle --ignore-existing .gitignore --ignore-existing .nojekyll --ignore-existing .projectile --ignore-existing .rbenv-version _site/ ./
git add -A .
git commit -m 'jekyll build'
