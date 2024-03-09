variable "environment" {
  description = "Environment being deployed"
}

variable "service" {
  description = "Name of the service"
}

variable "function" {
  description = "Name of the function"
}

variable "owner" {
  description = "Name of who owns the project"
}

variable "infrastructure_version" {
  description = "Used in tags to track infrastructure versions"
}