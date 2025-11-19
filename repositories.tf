resource "github_repository" "repository" {

  for_each = toset(data.github_repositories.list_repositories.names)

  name        = each.value
  description = "A standard project"

  visibility         = "private"
  topics             = ["standard", "common"]
  archive_on_destroy = true

  allow_update_branch = true

  allow_merge_commit = false
  allow_squash_merge = false
  allow_rebase_merge = true

  template {
    owner                = var.github_org
    repository           = "repo-template"
    include_all_branches = false
  }
}