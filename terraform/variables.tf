variable "project" {
	description = "The project to host the cluster"
	default = "andela-learning"
}

variable "region" {
	description = "the region to create the project in"
	default = "europe-west1"
}

variable "zone" {
	description = "the zone to create the project in"
	default = "europe-west1-b"
}

variable "cluster_name" {
  description = "The name of the cluster"
	default = "apprenticeship-redis"
}

variable "cluster_location" {
	description = "The zone to deploy the cluster to"
	default = "europe-west1-b"
}

variable "owner" {
  description = "The owner of the cluster"
	default = "andela-apprenticeship-devops"
}

variable "maintainers" {
  description = "The maintainers of the project"
	default = "david-essien"
}

variable "node_pool_name" {
	description = "The name of the node pool to use for the created cluster"
	default = "redis-cluster-node-pool"
}

variable "auto_scale_min_nodes" {
	description = "The minimum nodes in the node pool"
	default = 2
}

variable "auto_scale_max_nodes" {
	description = "The maximum nodes in the node pool"
	default = 6
}

variable "pool_machine_type" {
	description = "The type of machine to use for the cluster nodes"
  default     = "n1-standard-1"
}

variable "pool_disk_size_gb" {
	description = "The type of machine to use for the cluster nodes"
  default     = "n1-standard-1"
}







