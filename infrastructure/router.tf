resource "google_compute_router" "router" {
  name    = "router"
  region  = google_compute_subnetwork.bastion_subnet.region
  network = google_compute_network.vpc_network.id

}