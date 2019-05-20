terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "jacobm3"
    token = "${var.tfe_token}"

    workspaces {
      name = "jenkins-app5-dev"
    }
  }
}
