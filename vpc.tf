resource "google_compute_network" "gcp-vpc" {
    name = var.vpc_name
    mtu = var.mtu
    auto_create_subnetworks = var.auto_create_subnetworks
  
}



