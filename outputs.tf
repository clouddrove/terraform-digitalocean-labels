#Module      : LABLE
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
output "id" {
  value       = digitalocean_tag.id.id
  description = "Disambiguated ID."
}

output "name" {
  value       = digitalocean_tag.id.name
  description = "Normalized name."
}

output "application" {
  value       = digitalocean_tag.application.id
  description = "Normalized application."
}

output "environment" {
  value       = digitalocean_tag.environment.id
  description = "Normalized environment."
}

output "createdby" {
  value       = digitalocean_tag.createdby.id
  description = "Normalized createdby."
}

output "managedby" {
  value       = digitalocean_tag.managedby.id
  description = "Normalized managedby."
}