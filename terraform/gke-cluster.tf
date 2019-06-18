resource "google_container_cluster" "gke_cluster" {
  name              = "${var.cluster_name}"
	location					= "${var.cluster_location}"

	remove_default_node_pool = true
  initial_node_count       = 1

	master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

	resource_labels = {
    owner      = "${var.owner}"
    maintainers = "${var.maintainers}"
  }
}

