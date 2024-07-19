provider "ovh" {
  endpoint      = "ovh-eu"
}

data "ovh_cloud_project_capabilities_containerregistry_filter" "votingbooth_registry_filter" {
  service_name = var.service_name
  plan_name    = "SMALL"
  region       = "GRA"
}

resource "ovh_cloud_project_containerregistry" "votingbooth_registry" {
  service_name = data.ovh_cloud_project_capabilities_containerregistry_filter.votingbooth_registry_filter.service_name
  plan_id      = data.ovh_cloud_project_capabilities_containerregistry_filter.votingbooth_registry_filter.id
  region       = data.ovh_cloud_project_capabilities_containerregistry_filter.votingbooth_registry_filter.region
  name         = "votingbooth"
}

resource "ovh_cloud_project_containerregistry_user" "votingbooth_registry_user" {
    service_name = ovh_cloud_project_containerregistry.votingbooth_registry.service_name
    registry_id  = ovh_cloud_project_containerregistry.votingbooth_registry.id
    email        = var.email
    login        = var.login
}