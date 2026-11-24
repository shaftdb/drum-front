#!/usr/bin/env bash
# Commit and push the drum front page to GitHub Pages.
set -euo pipefail
cd "$(dirname "$0")"
git add -A
if git diff --cached --quiet; then
  echo "Nothing to commit."
else
  git -c user.name=shaftdb -c user.email=shaftdb@users.noreply.github.com \
    commit -m "Update drum front page"
fi
git push
echo "Live in about a minute at https://shaftdb.github.io/drum-front/"
