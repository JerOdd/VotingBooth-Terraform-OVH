module "ovh_kubernetes" {
  source = "./modules/ovh_kubernetes"
  service_name = var.service_name
}
 
module "ovh_registry" {
  source            = "./modules/ovh_registry"
  service_name = var.service_name
  login = var.harbor_login
  email = var.harbor_email
}

# module "harbor_registry" {
#   source            = "./modules/harbor_registry"
#   url = module.ovh_registry.registry_url
#   user = module.ovh_registry.user
#   password = module.ovh_registry.password
#   depends_on = [ module.ovh_registry ]
# }