resource "google_compute_firewall" "iap_access" {
    name        = "iap-access"
    project     = "final-project"
    network     = google_compute_network.vpc_network.id

    direction = "INGRESS"
    allow {
        protocol = "tcp"
        ports    = ["22" , "80"]  
    }
    source_ranges = [
        "0.0.0.0/0"
    ]
}