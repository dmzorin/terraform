terraform {
  backend "gcs" {
    bucket = "charming-study-340310-tf-state"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
