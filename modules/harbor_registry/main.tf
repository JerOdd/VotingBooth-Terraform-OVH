provider "harbor" {
  url           = var.url
  username      = var.user
  password      = var.password
}

resource "harbor_project" "vote_api" {
  name = "vote-api"
}