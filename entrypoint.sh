#!/bin/sh -l

git-clang-format HEAD~1 --extensions cpp,c,h,hpp --diff
