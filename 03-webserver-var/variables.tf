variable "project_id" {
  description = "The ID of your Google Cloud project"
  default     = "devops-430218"
}

variable "region" {
  description = "The region of your resources"
  default     = "us-central1"
}

variable "vm_name" {
  description = "The VM Name"
  default     = "webserver"
}

variable "machine_type" {
  description = "The machine type for the VM"
  default     = "e2-medium"
}

variable "zone" {
  description = "The zone for the VM"
  default     = "us-central1-a"
}

variable "firewall_name" {
  description = "The name of the firewall rule"
  default     = "allow-http"
}

variable "firewall_network" {
  description = "The network for the firewall rule"
  default     = "default"
}

variable "firewall_ports" {
  description = "The list of ports to allow"
  default     = ["80"]
}

variable "firewall_source_ranges" {
  description = "The source IP ranges to allow"
  default     = ["0.0.0.0/0"]
}