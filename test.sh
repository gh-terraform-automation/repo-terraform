githubRepos=$(gh repo list "tf-7ofWMvL9xWxxT8VsCQrU" --no-archived --limit 300 --json name,repositoryTopics | jq -r '.[] | (.repositoryTopics // []) as $topics | select(($topics | map(.name) | index("webmethods")) or ($topics | map(.name) | index("dataiku")) or ($topics | map(.name) | index("standard"))) | .name')
stateRepos=$(terraform show -json | jq -r '.values.root_module.resources[] | select(.type=="github_repository") | .values.name')

for repo in $githubRepos; do
    if ! grep -qx "$repo" <<< "$stateRepos"; then # Check if github repo is already in tf state
        terraform import github_repository.repository[\"$repo\"] $repo
    fi
done

terraform apply