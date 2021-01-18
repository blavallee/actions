#!/bin/sh -l

pwd
ls -al

git-clang-format HEAD~1 --extensions cpp,c,h,hpp --diff
