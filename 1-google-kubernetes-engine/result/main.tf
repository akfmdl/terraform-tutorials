provider "google" {
  credentials = file("${var.credentials}")
  region      = var.region
  zone        = var.zone
}

resource "google_container_cluster" "primary" {
  name               = var.cluster
  location           = var.zone
  min_master_version = var.kubernetes_version
  initial_node_count = var.initial_node_count
}
