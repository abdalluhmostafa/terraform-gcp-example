# Configure the Google Cloud provider
provider "google" {
  project = "devops-430218"
  region  = "us-central1"
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name         = "example"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"

  }
}