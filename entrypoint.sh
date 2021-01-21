#!/bin/sh -l

git clang-format HEAD~
if [ -n "$(git status --porcelain)" ]; then
  echo "::set-output name=changes_detected::true";
else
  echo "::set-output name=changes_detected::false";
fi
