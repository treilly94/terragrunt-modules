variable "env" {
  description = "What is the name of this environment"
}

variable "ip_range" {
  description = "What is the ip range of this environment"
  default = "10.10.10.0/24"
}

variable "instance_region" {
  description = "Where should the instance run (e.g. lon1)"
  default = "lon1"
}

resource "digitalocean_vpc" "main" {
  name     = "${var.env}-vpc"
  region   = var.instance_region
  ip_range = var.ip_range
}

output "vpc_id" {
  value = digitalocean_vpc.main.id
}