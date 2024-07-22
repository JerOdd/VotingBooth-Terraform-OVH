output "registry_url" {
  value = ovh_cloud_project_containerregistry.votingbooth_registry.url
}

output "user" {
  value = ovh_cloud_project_containerregistry_user.votingbooth_registry_user.user
}

output "password" {
  value = ovh_cloud_project_containerregistry_user.votingbooth_registry_user.password
  sensitive = true
}