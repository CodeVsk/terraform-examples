resource "docker_network" "consul_net" {
  name = var.docker.network.name
}

resource "docker_image" "consul" {
  name = var.docker.image.name
}

resource "docker_container" "consul" {
  name  =  var.docker.container.name
  image = var.docker.image.name
  restart = "unless-stopped"

  ports {
    internal = var.docker.container.ports.internal
    external = var.docker.container.ports.external
  }

  env = [
    "CONSUL_BIND_INTERFACE=eth0"
  ]

  networks_advanced {
    name = docker_network.consul_net.name
  }

  command = ["agent", "-dev", "-client=0.0.0.0"]
}
