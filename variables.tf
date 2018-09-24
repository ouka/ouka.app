variable "project" {
  default = "ouka-app"
}
variable "region" {
  default = "asia-northeast1"
}
variable "domain" {
  default = "ouka.app."
}

variable "edge-hosting" {
  default = [
    "151.101.1.195",
    "151.101.65.195"
  ]
}
