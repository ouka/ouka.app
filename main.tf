terraform {
  backend "gcs" {
    bucket  = "ouka-app-tfstate"
  }
}

provider "google" {
  project = "${var.project}"
  region  = "${var.region}"
}

resource "google_storage_bucket" "backend" {
  name  = "ouka-app-tfstate"
}
