resource "google_dns_record_set" "hosting" {
  count = "${length(var.hosting) > 1 ? 1 : 0}"

  name = "${google_dns_managed_zone.zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = "${google_dns_managed_zone.zone.name}"

  rrdatas = ["${var.hosting}"]
}
