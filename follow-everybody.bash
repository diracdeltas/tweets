#!/usr/bin/env bash

# Copyright @datn 2022. Heavens forgive me for this
# be in your repo dir for this
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
    git remote add "$user" "https://github.com/$user/$repo"
    git fetch "$user"
  done
  page_num=$((page_num+1))
done
