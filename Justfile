cancel:
  gh run list --status in_progress --json databaseId | jq -r '.[].databaseId' | xargs -n 1 gh run cancel
  gh run list --status queued --json databaseId | jq -r '.[].databaseId' | xargs -n 1 gh run cancel
