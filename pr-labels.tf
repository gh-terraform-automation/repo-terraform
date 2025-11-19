resource "github_issue_label" "label-test-1" {
  for_each    = toset(data.github_repositories.list_repositories.names)
  repository = each.value
  name       = "label-test-1"
  color      = "1D76DB"
}

resource "github_issue_label" "label-test-2" {
  for_each    = toset(data.github_repositories.list_repositories.names)
  repository = each.value
  name       = "label-test-2"
  color      = "1D76DB"
}