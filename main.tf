module "kubernetes" {
  source = "./modules/kubernetes"
  service_name = var.service_name
}
 
module "registry" {
  source            = "./modules/registry"
  service_name = var.service_name
  login = var.login
  email = var.email
}