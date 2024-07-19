provider "ovh" {
  endpoint      = "ovh-eu"
}

# Create an OVHcloud Managed Kubernetes cluster
resource "ovh_cloud_project_kube" "votingbooth_kube_cluster" {
  service_name = var.service_name
  name         = "votingbooth-kube-cluster"
  region       = "GRA7"
  version      = "1.30"
}

# Create a Node Pool for our Kubernetes clusterx
resource "ovh_cloud_project_kube_nodepool" "votingbooth_node_pool" {
  service_name  = var.service_name
  kube_id       = ovh_cloud_project_kube.votingbooth_kube_cluster.id
  name          = "votingbooth-node-pool" 
  flavor_name   = "b2-7"
  desired_nodes = 1
  max_nodes     = 1
  min_nodes     = 1
}