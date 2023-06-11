resource "google_compute_network" "vpc_network" {
  project                 = "final-project"
  name                    = "the-vpc-network"
  auto_create_subnetworks = false
}