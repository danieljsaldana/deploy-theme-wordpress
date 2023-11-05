resource "digitalocean_droplet" "mi_droplet" {
    image  = var.droplet_image
    name   = var.droplet_name
    region = var.droplet_region
    size   = var.droplet_size
    monitoring = true
    tags = [ "wordpress", "blog", "lab" ]
    droplet_agent = true
    ssh_keys = [ 
      digitalocean_ssh_key.mi_clave_rsa.fingerprint
    ]
}