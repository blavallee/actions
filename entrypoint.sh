#!/bin/sh -l

loc=$(ls -al /usr/bin/clang*)
echo "::set-output name=location::$loc"
