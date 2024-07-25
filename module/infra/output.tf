output "vm_instance_name" {
  description = "The name of the VM instance."
  value       = google_compute_instance.vm_instance.name
}

output "vpc_name" {
  description = "The name of the VPC, if created."
  value       = var.create_vpc ? google_compute_network.vpc[0].name : ""
}

output "subnet_name" {
  description = "The name of the subnet, if created."
  value       = var.create_vpc ? google_compute_subnetwork.subnet[0].name : ""
}