terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = var.provider_version
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region

}