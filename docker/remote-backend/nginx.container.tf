resource "docker_image" "nginx" {
  name         = var.docker.image.name
  keep_locally = var.docker.image.keep_locally
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.docker.container.name
  ports {
    internal = var.docker.container.ports.internal
    external = var.docker.container.ports.external
  }
}
