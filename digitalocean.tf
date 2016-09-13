variable "token" {}

provider "digitalocean" {
  token = "#{var.token}"
}

resource "digitalocean_droplet" "default" {
  count = "3",
  image = "coreos-72-x64"
  name = "Core-0#{count.index}"
  size = "512mb"
  region = "ams2"
  private_networking = true
}