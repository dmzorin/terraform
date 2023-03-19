module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "~> 14.2"

  project_id                  = var.project_id

  activate_apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "cloudapis.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "sql-component.googleapis.com",
    "storage-component.googleapis.com",
    "storage.googleapis.com",
    "container.googleapis.com",
    "bigquery.googleapis.com",
    "clouddebugger.googleapis.com",
    "cloudtrace.googleapis.com",
    "file.googleapis.com",
    "dns.googleapis.com",
    "cloudbuild.googleapis.com",
    "clouddeploy.googleapis.com",
    "artifactregistry.googleapis.com",
    "containerregistry.googleapis.com"
  ]
}