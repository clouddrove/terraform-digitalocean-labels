output "id" {
  value       = module.labels.id
  description = "Disambiguated ID."
}

output "name" {
  value       = module.labels.name
  description = "Normalized name."
}

output "environment" {
  value       = module.labels.environment
  description = "Normalized name."
}

output "managedby" {
  value       = module.labels.managedby
  description = "Normalized name."
}
