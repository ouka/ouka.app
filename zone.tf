module "ouka" {
  source = "./ouka"

  domain = "${var.domain}"
}

module "edge-ouka" {
  source = "./ouka"

  prefix = "edge-"

  domain = "edge.${var.domain}"
  hosting = ["${var.edge-hosting}"]
}

resource "google_dns_record_set" "edge-ouka" {
  name          = "edge.${var.domain}"
  type          = "NS"
  ttl           = "${60 * 60 * 6}"

  managed_zone  = "${module.ouka.zone_name}"

  rrdatas       = ["${module.edge-ouka.name_servers}"]
}
