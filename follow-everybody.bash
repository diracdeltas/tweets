#!/usr/bin/env bash

# Copyright @datn 2022. Heavens forgive me for this
# be in your repo dir for this

while IFS=/ read -r user repo; do
	git remote add "$user" "https://github.com/$user/$repo"
	git fetch "$user"
done < <(curl https://api.github.com/repos/diracdeltas/tweets/forks | jq -r '.[].full_name')
