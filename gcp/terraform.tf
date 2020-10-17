terraform {
  required_version = ">= 0.13"

  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
  }
}

provider "google" {
  version = "~> 3.43.0"
  project = "com-seankhliao"
  region  = "us-central1"
  zone    = "us-central1-c"
}
provider "google-beta" {
  version = "~> 3.43.0"
  project = "com-seankhliao"
  region  = "us-central1"
  zone    = "us-central1-c"
}
