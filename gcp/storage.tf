resource "google_storage_bucket" "cloudbuild" {
  provider = google

  name          = "${data.google_project.project.name}_cloudbuild"
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 15
    }
  }
}

resource "google_storage_bucket" "usgcr" {
  provider = google

  name          = google_container_registry.us.id
  location      = "US"
  storage_class = "STANDARD"
  force_destroy = true
}
