variable "github_org" {
  type = string
  description = "GitHub Organization"
}

variable "gh_private_token" {
  type = string
  description = "GitHub PAT"
  sensitive = true
}
