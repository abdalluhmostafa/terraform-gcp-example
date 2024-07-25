variable "project_id" {
  description = "The ID of the project in which to create the resources."
  type        = string
}

variable "region" {
  description = "The region in which to create the resources."
  type        = string
  default     = "us-central1"

}

variable "zone" {
  description = "The zone in which to create the resources."
  type        = string
}

variable "create_vpc" {
  description = "Whether to create a new VPC."
  type        = bool
  default     = false
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "default-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  default     = "default-subnet"
}

variable "subnet_ip" {
  description = "The CIDR range of the subnet."
  type        = string
  default     = "10.0.0.0/24"
}

variable "vm_name" {
  description = "The name of the VM instance."
  type        = string
}

variable "vm_machine_type" {
  description = "The machine type to use for the VM instance."
  type        = string
  default     = "n1-standard-1"
}

variable "vm_image" {
  description = "The image to use for the VM instance."
  type        = string
  default     = "debian-cloud/debian-10"
}

variable "vm_network" {
  description = "The network to attach the VM instance to."
  type        = string
  default     = "default"
}

variable "vm_subnet" {
  description = "The subnet to attach the VM instance to."
  type        = string
  default     = null
}
