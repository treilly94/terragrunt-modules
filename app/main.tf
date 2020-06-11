variable "env" {
  description = "What is the name of this environment"
}

variable "instance_size" {
  description = "What kind of servers to run (e.g. s-1vcpu-1gb)"
  default = "s-1vcpu-1gb"
}

variable "instance_region" {
  description = "Where should the instance run (e.g. lon1)"
  default = "lon1"
}

resource "digitalocean_droplet" "app" {
  image  = "ubuntu-18-04-x64"
  name   = "${env}-app"
  region = var.instance_region
  size   = var.instance_size
}
