data "google_container_cluster" "my_cluster" {
  name     = google_container_cluster.primary.name
  location = google_container_cluster.primary.location
}

output "cluster_id" {
  value = google_container_cluster.primary.id
}
  
output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "endpoint" {
  value = data.google_container_cluster.my_cluster.endpoint
}

output "cluster_ca_cert" {
  value = data.google_container_cluster.my_cluster.master_auth.0.cluster_ca_certificate
  sensitive = true
}

output "region" {
  value = var.region
}

output "zone" {
  value = var.zone
}

output "credentials" {
  value = var.credentials
}
