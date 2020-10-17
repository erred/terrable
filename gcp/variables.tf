variable "owner_email" {
  default = "seankhliao@gmail.com"
}

variable "sa_compute_default" {
  default = "330311169810-compute@developer.gserviceaccount.com"
}
variable "sa_cloudbuild_default" {
  default = "330311169810@cloudbuild.gserviceaccount.com"
}

variable "gservice_apis" {
  default = "330311169810@cloudservices.gserviceaccount.com"
}
variable "gservice_compute" {
  default = "service-330311169810@compute-system.iam.gserviceaccount.com"
}
variable "gservice_gcr" {
  default = "service-330311169810@containerregistry.iam.gserviceaccount.com"
}
variable "gservice_cloudbuild" {
  default = "service-330311169810@gcp-sa-cloudbuild.iam.gserviceaccount.com"
}
variable "gservice_run" {
  default = "service-330311169810@serverless-robot-prod.iam.gserviceaccount.com"
}
