terraform {
  backend "gcs" {
    bucket  = "ouka-app-tfstate"
  }
}

resource "google_storage_bucket" "backend" {
  name  = "ouka-app-tfstate"
}
