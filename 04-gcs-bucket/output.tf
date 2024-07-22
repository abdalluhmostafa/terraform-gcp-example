# Output variable: Google Cloud Storage Bucket
output "storage_bucket_self_link" {
  value = google_storage_bucket.gcs_bucket.self_link
}