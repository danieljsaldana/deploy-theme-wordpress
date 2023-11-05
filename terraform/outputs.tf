output "droplet_name" {
  value = digitalocean_droplet.mi_droplet.name
}

output "droplet_ip" {
  value = digitalocean_droplet.mi_droplet.ipv4_address
}

output "droplet_price" {
  value = digitalocean_droplet.mi_droplet.price_monthly
}