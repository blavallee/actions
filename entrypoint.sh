#!/bin/sh -l

cd "$GITHUB_WORKSPACE"

git-clang-format HEAD~1 --extensions cpp,c,h,hpp --diff
