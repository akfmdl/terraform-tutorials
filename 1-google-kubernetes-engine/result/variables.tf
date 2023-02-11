variable "credentials" {
  description = "Path to the credentials file for the service account"
  default     = "~/.terraform-tutorial-sa-private-key.json"
}

variable "region" {
  description = "The region to deploy to"
  default     = "asia-northeast3"
}

variable "cluster" {
  description = "The name of the cluster to create"
  type        = string
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  default     = "asia-northeast3-b"
}

variable "kubernetes_version" {
  description = "The Kubernetes version to use for the master and nodes. If you do not specify a value, the latest available version is used."
  default     = "1.22.15-gke.1000"
}

variable "initial_node_count" {
  description = "The number of nodes to create in this cluster's default node pool. In regional or multi-zonal clusters, this is the number of nodes per zone. Changing this will force recreation of the resource."
  default     = 1
}
