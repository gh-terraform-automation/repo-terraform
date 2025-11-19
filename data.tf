data "github_repositories" "list_repositories" {
    query = "org:${var.github_org} ter-round-"
}