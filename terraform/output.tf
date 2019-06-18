output "cluster_name_out" {
  value = "${google_container_cluster.gke_cluster.name}"
}

output "client_certificate_out" {
  value     = "${google_container_cluster.gke_cluster.master_auth.0.client_certificate}"
  sensitive = true
}

output "client_key_out" {
  value     = "${google_container_cluster.gke_cluster.master_auth.0.client_key}"
  sensitive = true
}

output "cluster_ca_certificate_out" {
  value     = "${google_container_cluster.gke_cluster.master_auth.0.cluster_ca_certificate}"
  sensitive = true
}

output "host_out" {
  value     = "${google_container_cluster.gke_cluster.endpoint}"
  sensitive = true
}
