variable "zone" {
  default = "us-central1-a"
} 
provider "google" {
  project     = "beaming-inn-237311"
  region      = "us-central1"
  version     = "1.19.0"
} 

resource "google_compute_disk" "default" {
  name  = "test-disk"
  type  = "pd-ssd"
  zone  = "${var.zone}" 
  image = "debian-8-jessie-v20170523"
  labels = {
    environment = "dev"
  }
  physical_block_size_bytes = 4096
} 
