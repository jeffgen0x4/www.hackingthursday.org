#!/usr/bin/env bash

for ff in $(find source/ -type f -name '*.txt')
do
	filename=$(basename $ff)
	./converter.py "$ff" "converted/${filename%.txt}.md"
done
