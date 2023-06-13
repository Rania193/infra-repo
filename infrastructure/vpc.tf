resource "google_compute_network" "vpc_network" {
  project                 = "iti-final-project-389712"
  name                    = "the-vpc-network"
  auto_create_subnetworks = false
}