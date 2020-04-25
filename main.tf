## Managed By : CloudDrove
## Copyright @ CloudDrove. All Right Reserved.

#Module      : locals
#Description : This terraform module is designed to generate consistent label names and tags
#     for resources. You can use terraform-labels to implement a strict naming convention.
locals {
  enabled = var.enabled == true ? true : false
  id_context = {
    name        = var.name
    application = var.application
    environment = var.environment
  }

  # run loop for label order and set in value.
  id_labels = [for l in var.label_order : local.id_context[l] if length(local.id_context[l]) > 0]

  id          = lower(join(var.delimiter, local.id_labels, var.attributes))
  name        = local.enabled == true ? format("%v%s", "Name:-", var.name) : ""
  application = local.enabled == true ? format("%v%s", "Application:-", var.application) : ""
  environment = local.enabled == true ? format("%v%s", "Environment:-", var.environment) : ""
  createdby   = local.enabled == true ? format("%v%s", "Createdby:-", var.createdby) : ""
  managedby   = local.enabled == true ? format("%v%s", "Managedby:-", var.managedby) : ""
  attributes  = local.enabled == true ? format("%v", join(var.delimiter, compact(var.attributes))) : ""

}

resource "digitalocean_tag" "id" {
  count = var.enabled == true ? 1 : 0
  name  = local.id
}

resource "digitalocean_tag" "name" {
  count = var.enabled == true ? 1 : 0
  name  = local.name
}

resource "digitalocean_tag" "application" {
  count = var.enabled == true ? 1 : 0
  name  = local.application
}

resource "digitalocean_tag" "environment" {
  count = var.enabled == true ? 1 : 0
  name  = local.environment
}

resource "digitalocean_tag" "createdby" {
  count = var.enabled == true ? 1 : 0
  name  = local.createdby
}

resource "digitalocean_tag" "managedby" {
  count = var.enabled == true ? 1 : 0
  name  = local.managedby
}