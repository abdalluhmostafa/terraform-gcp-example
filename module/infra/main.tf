resource "google_compute_network" "vpc" {
  count = var.create_vpc ? 1 : 0
  name  = var.vpc_name
}

resource "google_compute_subnetwork" "subnet" {
  count         = var.create_vpc ? 1 : 0
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip
  network       = google_compute_network.vpc[0].name
  region        = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network    = var.create_vpc ? google_compute_network.vpc[0].name : var.vm_network
    subnetwork = var.create_vpc ? google_compute_subnetwork.subnet[0].name : var.vm_subnet
  }
}
