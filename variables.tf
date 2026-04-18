variable "project_id" {
    default = "affordable-dev-project-493515"
}

variable "region" {
    default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "gke_cluster_name" {
  default = "gke"
}

variable "application_name" {
  default = "hr"
}

variable "environment" {
  default = "staging"
}

variable "gke_num_nodes" {
  default = 1
  description = "number of gke nodes"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "vpc" {
  default = "default"
}

variable "subnet" {
  default = "default"
}

variable "google_container_node_pool_name" {
   default = "nodepooltest"
}

variable "memory_storage_name" {
  default = "memorystorage"
}

variable "tier" {
  default = "BASIC"
}

variable "memory_size_gb" {
  default = 1
}

variable "cloud_storage_name" {
    default = "cloud-storage"
}

variable "versioning" {
  default = false
}