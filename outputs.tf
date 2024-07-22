output "registry_url" {
  value = module.registry.registry_url
}

output "user" {
  value = module.registry.user
}

output "password" {
  value = module.registry.password
  sensitive = true
}