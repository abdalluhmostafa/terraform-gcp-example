module "gcp_vm" {
  source     = "../module/infra"
  project_id = "devops-430218"

  ## VM ###
  vm_name         = "example-vm"
  vm_machine_type = "e2-medium"
  vm_image        = "ubuntu-2004-lts"
  zone            = "us-central1-a"
  vm_network      = "default"
  vm_subnet       = "default"

  #   ## VPC ##
  #   create_vpc  = true
  #   region      = "us-central1"
  #   vpc_name    = "custom-vpc"
  #   subnet_name = "custom-subnet"
  #   subnet_ip   = "10.1.0.0/24"
}
