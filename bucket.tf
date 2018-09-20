resource "google_storage_bucket" "backend" {
  name     = "${var.backend-bucket}"
}
