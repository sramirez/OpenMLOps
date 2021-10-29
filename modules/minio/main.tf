
resource "helm_release" "minio" {
  name      = "minio"
  namespace = var.namespace
  version = "8.1.9"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "minio"

  set {
    name  = "accessKey.password"
    value = var.minio_user_root
  }

  set {
    name  = "auth.rootUser"
    value = var.minio_user_root
  }

  set {
    name  = "auth.rootPassword"
    value = var.minio_password
  }

  set {
    name = "auth.forcePassword"
    value = true
  }

  set {
    name  = "secretKey.password"
    value = var.minio_password
  }

  set {
    name  = "defaultBuckets"
    value = var.default_buckets
  }

}