terraform {
  backend "gcs" {
    bucket = "devops-sprint-gcs-tf"
    prefix = "mytfstate"
  }
}