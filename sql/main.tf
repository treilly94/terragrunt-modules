variable "instance_region" {
  description = "Where should the instance run (e.g. lon1)"
  default = "lon1"
}

resource "digitalocean_database_cluster" "sql" {
  name       = "mysql-cluster"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = var.instance_region
  node_count = 1
}
