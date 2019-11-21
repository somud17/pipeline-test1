terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "willhallonline"

    workspaces {
      name = "hello-serverless"
    }
  }
}
