variable "authentication" {
  type = object({
    host = string
  })

  default = {
    host = "npipe:////.//pipe//docker_engine"
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
    network = object({
      name = string
    })
    image = object({
      name         = string,
      keep_locally = bool
    })
  })

  default = {
    container = {
      name = "consul",
      ports = {
        internal = 8500,
        external = 8500
      }
    },
    network = {
      name = "consul_net"
    },
    image = {
      name         = "consul:1.15",
      keep_locally = false
    }
  }
}