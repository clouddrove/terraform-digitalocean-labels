provider "digitalocean" {
  # You need to set this in your .bashrc
  # export DIGITALOCEAN_TOKEN="Your API TOKEN"
  #
}

module "labels" {
  source      = "./../"
  enabled     = true
  name        = "labels"
  application = "clouddrove"
  environment = "test"
  label_order = ["name", "application", "environment"]
}
