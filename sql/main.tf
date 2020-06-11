variable "env" {
  description = "What is the name of this environment"
}

variable "vpc_uuid" {
  description = "The uuid of the vpc for this environment"
}

variable "instance_region" {
  description = "Where should the instance run (e.g. lon1)"
  default = "lon1"
}

resource "digitalocean_database_cluster" "sql" {
  name       = "${var.env}-mysql"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = var.instance_region
  node_count = 1
  private_network_uuid = var.vpc_uuid
}
