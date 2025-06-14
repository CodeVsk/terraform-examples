variable "authentication" {
  type = object({
    host = string
  })

  default = {
    host = "npipe:////.//pipe//docker_engine"
  }
}

variable "remote_backend" {
  type = object({
    address = string,
    path = number
  })

  default = {
    address = "http://localhost:8500"
    path    = "terraform/remote-backend"
  }
}

variable "docker" {
  type = object({
    container = object({
      name = string,
      ports = object({
        internal = number,
        external = number
      })
    })
    image = object({
      name         = string,
      keep_locally = bool
    })
  })

  default = {
    container = {
      name = "nginx",
      ports = {
        internal = 80,
        external = 8080
      }
    },
    image = {
      name         = "nginx:latest",
      keep_locally = false
    }
  }
}