data "google_container_cluster" "my_cluster" {
  name     = google_container_cluster.primary.name
  location = google_container_cluster.primary.location
}

output "name" {
  value = google_container_cluster.primary.name
}

output "endpoint" {
  value = data.google_container_cluster.my_cluster.endpoint
}

output "node_pools" {
  value = data.google_container_cluster.my_cluster.node_pool
}
