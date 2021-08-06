#Module      : LABLE
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
output "id" {
  value       = join("", digitalocean_tag.id.*.id)
  description = "Disambiguated ID."
}

output "name" {
  value       = join("", digitalocean_tag.name.*.name)
  description = "Normalized name."
}

output "environment" {
  value       = join("", digitalocean_tag.environment.*.id)
  description = "Normalized environment."
}

output "managedby" {
  value       = join("", digitalocean_tag.managedby.*.id)
  description = "Normalized managedby."
}