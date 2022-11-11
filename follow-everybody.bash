#!/usr/bin/env bash

# Copyright @datn 2022. Heavens forgive me for this
# be in your repo dir for this

# exits unsuccessfully if remote already exists
# $1 is new remote name
# $2 is new remote URL
# $3 is list of your existing remotes
add_new_remote() {
    if grep -q "$1" <<< "$3"; then
        false
    else
        git remote add "$1" "$2"
    fi
}

# cache list of existing remotes
remotes=$(git remote)

# add yan's original repo so people have the staging branch
add_new_remote diracdeltas https://github.com/diracdeltas/tweets/ "$remotes" && git fetch diracdeltas

declare -i page_num
page_num=1

while [[ $results_length != 0 ]];
do
  results=$(curl -H "Accept: application/vnd.github+json" "https://api.github.com/repos/diracdeltas/tweets/forks?per_page=100&page=$page_num")
  results_length=$(echo $results | jq length)
  for I in $(echo $results| jq -r '.[].full_name')
  do
    user=$(echo "$I" | cut -d\/ -f1)
    repo=$(echo "$I" | cut -d\/ -f2)
    add_new_remote "$user" "https://github.com/$user/$repo" "$remotes" && git fetch "$user"
  done
  page_num=$((page_num+1))
done
