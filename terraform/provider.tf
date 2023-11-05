terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.30"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_ssh_key" "mi_clave_rsa" {
    name = "mi_clave_rsa"
    public_key = file(var.ssh_key_path)
}