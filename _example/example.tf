variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

module "labels" {
  source = "./../"

  name        = "labels"
  application = "clouddrove"
  environment = "test"
  label_order = ["name", "application", "environment"]
}
