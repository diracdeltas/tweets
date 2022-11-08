#!/usr/bin/env bash

# Copyright @guites 2022. I have no shame

while read -r remote; do
  echo "Fetching $remote"
  GIT_TERMINAL_PROMPT=0 git fetch $remote
  [ $? != 0 ] && git remote remove $remote
done <<< "$(git remote)"
