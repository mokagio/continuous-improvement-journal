#!/bin/bash

set -e

echo '--- 🔧 Building static content'

# This blog is powered by Hugo, and this is the build command
# See: https://gohugo.io
hugo

echo '--- 🔧 Committing to git'

git add -A
git commit -m "$(date) deploy"

echo '--- 🚀 Deploying'

git push origin master
git subtree push --prefix=public git@github.com:mokagio/continuous-improvement-journal.git gh-pages

echo '--- ✅ All done'


