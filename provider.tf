// Please provide credential by environment variable
provider "google" {
  project     = "${var.project}"
  region      = "${var.region}"
}
