gh repo list patrickzhou1234 --json nameWithOwner,isPrivate     --jq 'map(select(.isPrivate)) | .[].nameWithOwner'     | while IFS= read -r repo; do         gh repo edit "$repo" --visibility public;     done