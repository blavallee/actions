#!/bin/sh -l

git clang-format HEAD~
if [ -n "$(git status --porcelain)" ]; then
  echo "::set-output name=changes_detected::true";
  newbranch='ClangFormat-$(git rev-parse HEAD)'
  git checkout -b $newbranch
  git config user.name blavallee
  git config user.email benoitlavallee@gmail.com
  git commit --all --message "Clang-format" --message "$(git log -1 --pretty=%B)"
  git push origin $newbranch
else
  echo "::set-output name=changes_detected::false";
fi

