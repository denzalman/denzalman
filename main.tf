terraform {
    backend "remote" {
    organization = "takitome"

    workspaces {
        name = "test-workspace"
    }
    }
}

resource "null_resource" "terraform-github-actions" {
    triggers = {
        value = "This resource was created using GitHub Actions!"
    }
}
