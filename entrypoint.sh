#!/bin/sh -l

diff=`git-clang-format HEAD~1 --extensions cpp,c,h,hpp --diff`
[ "$diff" = "no modified files to format" ] && exit 0
[ "$diff" = "clang-format did not modify any files" ] && exit 0

printf "\033[1mYou have introduced coding style breakages, suggested changes:\n\n"

echo "$diff" | colordiff
exit 1
