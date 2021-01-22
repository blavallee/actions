#!/bin/sh -l

git clang-format HEAD~
if [ -n "$(git status --porcelain)" ]; then
  echo "::set-output name=changes_detected::true";
  git checkout -b ClangFormat-$(git rev-parse HEAD)
  git config user.name blavallee
  git config user.email benoitlavallee@gmail.com
  git commit --all --message "Clang-format" --message "$(git log -1 --pretty=%B)"
  git push origin ClangFormat-$(git rev-parse HEAD)
else
  echo "::set-output name=changes_detected::false";
fi

