variable "provider_version" {
  description = "Google provider version"
  type = string
  default = "4.57.0"
}

variable "project_id" {
  description = "Project_id"
  type = string
  default = "gs-pca"
}

variable "region" {
  description = "Region"
  type = string
  default = "us-central1"
}


variable "zone" {
  description = "Zone"
  type = string
  default = "us-central1-a"
}