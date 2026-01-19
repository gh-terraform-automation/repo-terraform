# resource "github_actions_secret" "gh_private_token" {
#  for_each = var.list_repositories
#
#  repository       = each.value
#  secret_name      = "GH_PRIVATE_TOKEN"
#  plaintext_value  = var.gh_private_token
# }
