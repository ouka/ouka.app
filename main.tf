terraform {
  backend "gcs" {
    bucket  = "ouka-app-tfstate"
  }
}

resource "google_storage_bucket" "backend" {
  name  = "ouka-app-tfstate"
}

module "ouka" {
  source  = "./ouka"

  domain  = "ouka.app."
  region  = "asia-northeast1"
  project = "ouka-app"
}
