terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "app_image" {
  name = var.docker_image_name
}

resource "docker_container" "app_container" {
  name  = var.container_name
  image = docker_image.app_image.name

  ports {
    internal = var.container_port
    external = var.host_port
  }
}
