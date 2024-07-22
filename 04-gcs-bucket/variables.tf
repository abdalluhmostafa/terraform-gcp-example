variable "project_id" {
  description = "The ID of your Google Cloud project"
  default     = "devops-430218"
}
variable "region" {
  description = "The region of your resources"
  default     = "us-central1"
}

# Input variable: Name of Google Cloud Storage bucket
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
  default     = "my-sre-demo-bucket3"
}

variable "location" {
  description = "The location for GCS bucket"
  default     = "US"
}

variable "force_destroy" {
  description = "enable force destroy for bucket? "
  default     = true
}