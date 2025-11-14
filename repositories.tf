resource "github_repository" "repository" {

  for_each = var.list_repositories

  name        = each.value
  description = "Repository created using Terraform."

  visibility = "private"

  template {
    owner                = var.github_org
    repository           = "repo-template"
    include_all_branches = false
  }
}