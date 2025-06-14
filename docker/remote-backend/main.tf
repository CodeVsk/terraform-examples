terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }

  backend "consul" {
    address = var.remote_backend.address
    path    = var.remote_backend.path
    lock    = true
  }

}

provider "docker" {
  host = var.authentication.host
}
