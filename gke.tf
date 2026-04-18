resource "google_container_cluster" "primary1" {
  name = var.gke_cluster_name
  remove_default_node_pool = true
  initial_node_count = 1
  location = var.zone


  node_config {
    machine_type = "e2-micro"      
    disk_size_gb = 31             
    disk_type    = "pd-ssd"
    
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  network = var.vpc
  subnetwork = var.subnet
  deletion_protection = false
}

resource "google_container_node_pool" "primary_nodes" {
  name = var.google_container_node_pool_name
  cluster = google_container_cluster.primary1.name
  node_count = var.gke_num_nodes
  location = var.zone

  node_config {
    oauth_scopes = [
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/cloud-platform"
    ]
    machine_type = var.machine_type
    disk_size_gb = 30
    disk_type    = "pd-ssd"
    metadata = {
        disable-legacy-endpoints = "true"
    }
  }
  
}
