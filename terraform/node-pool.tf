resource "google_container_node_pool" "cluster_node_pool" {
  name       = "${var.node_pool_name}"
  location   = "${var.cluster_location}"
  cluster    = "${google_container_cluster.gke_cluster.name}"
	node_count = "${var.auto_scale_min_nodes}"

	autoscaling {
		min_node_count = "${var.auto_scale_min_nodes}"
		max_node_count = "${var.auto_scale_max_nodes}"
	}

	management {
    auto_upgrade 	= true
		auto_repair 	= true
  }

  node_config {
    preemptible		=	false
    machine_type	=	"${var.pool_machine_type}"

    metadata {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/trace.append",
      "https://www.googleapis.com/auth/compute",
    ]
  }
}
