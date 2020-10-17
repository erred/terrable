terraform {
  required_version = ">= 0.13"

  required_providers {
    cloudflare = {
      source = "terraform-providers/cloudflare"
    }
  }
}

provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cloudflare_email
  api_key = var.cloudflare_api_key
}
