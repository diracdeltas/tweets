#!/usr/bin/env bash

# Copyright @datn 2022. Heavens forgive me for this
# be in your repo dir for this
for I in $(curl -H "Accept: application/vnd.github+json" https://api.github.com/repos/diracdeltas/tweets/forks | jq -r '.[].full_name')
do  
	user=$(echo "$I" | cut -d\/ -f1)
	repo=$(echo "$I" | cut -d\/ -f2)
	git remote add "$user" "https://github.com/$user/$repo"
	git fetch "$user"
done
