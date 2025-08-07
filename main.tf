terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

resource "docker_image" "node_app_image" {
  name = "syedmujtaba2002/nodejs-demo-app:latest"
}

resource "docker_container" "node_app_container" {
  name  = "nodejs-demo-app"
  image = docker_image.node_app_image.name
  ports {
    internal = 3000    # Change to your app's container port if needed
    external = 8080    # Host port to access via browser
  }
}
