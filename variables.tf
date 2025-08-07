variable "docker_image_name" {
  description = "Docker image name from Docker Hub"
  type        = string
  default     = "syedmujtaba2002/nodejs-demo-app:latest"
}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "nodejs-demo-app"
}

variable "container_port" {
  description = "Internal port used by the app"
  type        = number
  default     = 3000
}

variable "host_port" {
  description = "Port on host to expose the container"
  type        = number
  default     = 5000
}
