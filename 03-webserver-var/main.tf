resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      # Ephemeral IP
    }
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    echo "Hello, World!" > /var/www/html/index.html
    service nginx start
  EOF
}

resource "google_compute_firewall" "firewall" {
  name    = var.firewall_name
  network = var.firewall_network

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = var.firewall_source_ranges
}