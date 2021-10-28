variable "namespace" {
  description = "Namespace name to deploy the application"
  default     = "default"
}

variable "minio_password" {
  description = "Minio root password"
  default = "admin"
}

variable "default_buckets" {
  description = "Default buckets to be created"
  default = []
}

variable "service_port" {
  description = "Service port number"
  default     = 9000
}

