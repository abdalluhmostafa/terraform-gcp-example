# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "gcs_bucket" {
  project                     = var.project_id
  name                        = var.bucket_name
  location                    = var.location
  force_destroy               = var.force_destroy
  uniform_bucket_level_access = true
}