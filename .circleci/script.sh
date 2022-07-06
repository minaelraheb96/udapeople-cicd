TOKEN="316a7908-e8fc-4561-a5e7-f3a61e4113b1"
ORG="Minaelraheb"
URL_SUFFIX="/enable?circle-token="$TOKEN
URL_PREFIX="https://circleci.com/api/v1.1/project/github/"$ORG"/"

while IFS='' read -r repo || [[ -n "$repo" ]]; do
	    sleep 2
	        curl -X "DELETE" $URL_PREFIX$repo$URL_SUFFIX
	done < "$1"
