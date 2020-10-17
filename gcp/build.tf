resource "google_cloudbuild_trigger" "com-seankhliao-main" {
  provider = google-beta

  name        = "com-seankhliao-main"
  description = "CI/CD for com-seankhliao"
  disabled    = false
  filename    = "cloudbuild.yaml"

  github {
    owner = "seankhliao"
    name  = "com-seankhliao"

    push {
      branch = "^main$"
    }
  }
}

resource "google_cloudbuild_trigger" "vanity-main" {
  provider = google-beta

  name        = "vanity-main"
  description = "CI/CD for vanity"
  disabled    = false
  filename    = "cloudbuild.yaml"

  github {
    owner = "seankhliao"
    name  = "vanity"

    push {
      branch = "^main$"
    }
  }
}
