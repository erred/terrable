resource "google_cloud_run_domain_mapping" "web" {
  location = "us-central1"
  name     = "seankhliao.com"

  metadata {
    namespace = data.google_project.project.name
  }

  spec {
    route_name = google_cloud_run_service.web.name
  }
}

resource "google_cloud_run_service" "web" {
  name     = "web"
  location = "us-central1"

  template {
    spec {
      container_concurrency = 80
      timeout_seconds       = 5
      service_account_name  = var.sa_compute_default
      containers {
        image = "us.gcr.io/${data.google_project.project.name}/com-seankhliao"

        resources {
          limits = {
            "cpu"    = "1000m"
            "memory" = "128Mi"
          }
          requests = {}
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
  autogenerate_revision_name = true
}

resource "google_cloud_run_domain_mapping" "vanity" {
  location = "us-central1"
  name     = "go.seankhliao.com"

  metadata {
    namespace = data.google_project.project.name
  }


  spec {
    route_name = google_cloud_run_service.vanity.name
  }
}

resource "google_cloud_run_service" "vanity" {
  name     = "vanity"
  location = "us-central1"

  template {
    spec {
      container_concurrency = 80
      timeout_seconds       = 5
      service_account_name  = var.sa_compute_default
      containers {
        image = "us.gcr.io/${data.google_project.project.name}/vanity"

        resources {
          limits = {
            "cpu"    = "1000m"
            "memory" = "128Mi"
          }
          requests = {}
        }
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
  autogenerate_revision_name = true
}
