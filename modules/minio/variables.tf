variable "namespace" {
  description = "Namespace name to deploy the application"
  default     = "default"
}

variable "minio_password" {
  description = "Minio root password"
  default = "admintest"
}

variable "minio_user_root" {
  description = "Minio root user"
  default = "admin"
}

variable "default_buckets" {
  description = "Default buckets to be created"
  default = "mlflow-artifacts"
}


