resource "google_dns_managed_zone" "edge-ouka" {
  name      = "edge-ouka-zone"
  dns_name  = "edge.${var.domain}"
}
