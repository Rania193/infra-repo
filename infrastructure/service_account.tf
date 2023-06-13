resource "google_service_account" "gke-service-account" {
  account_id = "gke-service-account"
  display_name = "gke-service-account"
  project = "final-project-389511"
}

resource "google_project_iam_binding" "gke-service-account-iam" {
  project = "final-project-389511"
  role    = "roles/container.developer"
  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}"
  ]
}