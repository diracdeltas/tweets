[ -z "$1" ] && echo "Please define a search query" && exit 1
users=$(curl --get -H "Accept: application/vnd.github.text-match+json" --data-urlencode "q=$*" "https://api.github.com/search/users" | jq -r ".items[] | select(.type==\"User\") | [.login,.html_url] | @tsv")
commits=$(curl --get -H "Accept: application/vnd.github.text-match+json" --data-urlencode "q=$*" "https://api.github.com/search/commits" | jq -r ".items[].author | select(.type==\"User\") | [.login,.html_url] | @tsv")
results="$users\n$commits" 
if [ -z "$results" ]; then
  echo "No users found."
  exit 1
else
  echo "$results" | column -ts $'\t' > .results.text
  cat -n .results.text | sort -u -k2 | sort -k1 | cut -f2-
  rm .results.text
fi
