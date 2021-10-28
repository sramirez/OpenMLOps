
resource "helm_release" "minio" {
  name      = "minio"
  namespace = var.namespace
  version = "8.1.9"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "minio"

  set {
    name  = "defaultBuckets"
    value = var.default_buckets
  }

  set {
    name  = "auth.rootPassword"
    value = var.minio_password
  }

  set {
    name  = "secretKey.password"
    value = var.minio_password
  }

  set {
    name = "image.pullPolicy"
    value = "Always"
  }


}