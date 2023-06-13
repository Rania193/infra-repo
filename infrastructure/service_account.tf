resource "google_service_account" "gke-service-account" {
  account_id = "gke-service-account1"
  display_name = "gke-service-account1"
  project = "iti-final-project-389712"
}

resource "google_project_iam_binding" "gke-service-account-iam" {
  project = "iti-final-project-389712"
  role    = "roles/container.developer"
  members = [
    "serviceAccount:${google_service_account.gke-service-account.email}"
  ]
}