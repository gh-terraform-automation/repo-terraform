terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }
  }
}

provider "github" {
  owner = var.github_org
  token = var.gh_private_token # Export the TF_VAR_gh_private_token=<your-token> to use it.
}
