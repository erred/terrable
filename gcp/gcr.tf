resource "google_container_registry" "us" {
  provider = google
  location = "US"
}
