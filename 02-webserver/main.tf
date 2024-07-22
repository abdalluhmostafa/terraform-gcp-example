provider "google" {
  project = "devops-430218"
  region  = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-webserver"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
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
# Firewall Rule
resource "google_compute_firewall" "firewall" {
  name    = "allow-http"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}