# https://www.terraform.io/docs/providers/google/r/google_project_service.html
resource "google_project_service" "compute" {
  service = "compute.googleapis.com"
}

resource "google_project_service" "run" {
  service = "run.googleapis.com"
}
resource "google_project_service" "gcr" {
  service = "containerregistry.googleapis.com"
}
resource "google_project_service" "cloudbuild" {
  service = "cloudbuild.googleapis.com"
}

resource "google_project_service" "storage" {
  service = "storage-component.googleapis.com"
}
