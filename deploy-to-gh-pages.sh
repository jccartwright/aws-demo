#!/usr/bin/env sh

# abort on errors
set -e

# build
# npm run build

ls -al
# navigate into the build output directory
cd dist
pwd


# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init --initial-branch=main
git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:jccartwright/aws-demo.git main:gh-pages

cd -
