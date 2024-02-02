data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "aioc"
    workspaces = {
      name = "vpc"
    }
  }
}