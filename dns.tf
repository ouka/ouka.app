resource "google_dns_managed_zone" "ouka" {
  name      = "ouka-zone"
  dns_name  = "${var.domain}"
}

resource "google_dns_record_set" "edge-ouka" {
  name = "edge.${google_dns_managed_zone.ouka.dns_name}"
  type = "NS"
  ttl  = "${60 * 60 * 6}"

  managed_zone = "${google_dns_managed_zone.ouka.name}"

  rrdatas = ["${google_dns_managed_zone.edge-ouka.name_servers}"]
}
